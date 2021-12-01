import 'package:equatable/equatable.dart';

import 'forecast_entity.dart';

class ClimateEntity extends Equatable {
  final String temp;
  final DateTime date;
  final String conditionCode;
  final String description;
  final String currently;
  final String city;
  final String humidity;
  final String windSpeedy;
  final String cityName;
  final List<ForecastEntity> forecast;

  const ClimateEntity(
      {required this.temp,
      required this.date,
      required this.conditionCode,
      required this.description,
      required this.currently,
      required this.city,
      required this.humidity,
      required this.windSpeedy,
      required this.cityName,
      required this.forecast});

  @override
  // TODO: implement props
  List<Object?> get props => [
        temp,
        date,
        conditionCode,
        description,
        currently,
        city,
        humidity,
        windSpeedy,
        cityName,
        forecast,
      ];
}
