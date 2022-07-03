import 'package:dartz/dartz.dart';
import 'package:take_your_umbrella/app/domain/core/failures/server_failures.dart';
import 'package:take_your_umbrella/app/domain/entities/climate_entity.dart';

abstract class ClimateRepository {
  //Right retorna a entidade e left o erro
  Future<Either<ServerFailures, ClimateEntity>> getClimate(String city);
  Future<Either<ServerFailures, ClimateEntity>> getLocation(
      double lat, double long);
}
