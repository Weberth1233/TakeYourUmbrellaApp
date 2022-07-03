import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:take_your_umbrella/app/domain/core/failures/server_failures.dart';
import 'package:take_your_umbrella/app/domain/entities/climate_entity.dart';
import 'package:take_your_umbrella/app/domain/repositories/climate_repository.dart';
import 'package:take_your_umbrella/app/infra/core/http/climate_client.dart';
import 'package:take_your_umbrella/app/infra/models/climate_model.dart';

class ClimateRepositoryImpl extends ClimateRepository {
  final ClimateClient client;

  ClimateRepositoryImpl(this.client);
  String token = "2b2f007e";

  @override
  Future<Either<ServerFailures, ClimateEntity>> getClimate(String city) async {
    try {
      final response = await client.get('key=$token&city_name=$city');
      final ClimateEntity entity =
          ClimateModel.fromMap(response.data).toEntity();
      return right(entity);
    } on DioError catch (e) {
      if (e.response!.statusCode == 404) {
        return left(ServerFailures.notFound);
      }
      return left(ServerFailures.serverError);
    }
  }

  @override
  Future<Either<ServerFailures, ClimateEntity>> getLocation(
      double lat, double long) async {
    try {
      final response =
          await client.get('key=$token&lat=$lat&lon=$long&user_ip=remote');
      final ClimateEntity entity =
          ClimateModel.fromMap(response.data).toEntity();
      return right(entity);
    } on DioError catch (e) {
      if (e.response!.statusCode == 404) {
        return left(ServerFailures.notFound);
      }
      return left(ServerFailures.serverError);
    }
  }
}
