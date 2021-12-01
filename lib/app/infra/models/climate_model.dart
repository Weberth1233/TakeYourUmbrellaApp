import 'package:take_your_umbrella/app/domain/entities/climate_entity.dart';

import 'forecast_model.dart';

class ClimateModel {
  final String temp;
  final DateTime date;
  final String conditionCode;
  final String description;
  final String currently;
  final String city;
  final String humidity;
  final String windSpeedy;
  final String cityName;
  final List<ForecastModel> forecast;

  ClimateModel(
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

  Map<String, dynamic> toMap() {
    return {
      'temp': temp,
      'date': date,
      'condition_code': conditionCode,
      'description': description,
      'currently': currently,
      'city': city,
      'humidity': humidity,
      'wind_speedy': windSpeedy,
      'city_name': cityName,
      'forecast': forecast.map((x) => x.toMap()).toList(),
    };
  }

  factory ClimateModel.fromEntity(ClimateEntity entity) {
    return ClimateModel(
        temp: entity.temp,
        date: entity.date,
        conditionCode: entity.conditionCode,
        description: entity.description,
        currently: entity.currently,
        city: entity.city,
        humidity: entity.humidity,
        windSpeedy: entity.windSpeedy,
        cityName: entity.cityName,
        forecast:
            entity.forecast.map((x) => ForecastModel.fromEntity(x)).toList());
  }
  ClimateEntity toEntity() => ClimateEntity(
      temp: temp,
      date: date,
      conditionCode: conditionCode,
      description: description,
      currently: currently,
      city: city,
      humidity: humidity,
      windSpeedy: windSpeedy,
      cityName: cityName,
      forecast: forecast.map((x) => x.toEntity()).toList());

  factory ClimateModel.fromMap(Map<String, dynamic> map) {
    return ClimateModel(
      temp: map['results']['temp'],
      date: map['results']['date'],
      conditionCode: map['results']['condition_code'],
      description: map['results']['description'],
      currently: map['results']['currently'],
      city: map['results']['city'],
      humidity: map['results']['humidity'],
      windSpeedy: map['results']['wind_speedy'],
      cityName: map['results']['city_name'],
      forecast: List<ForecastModel>.from(
          map['forecast']?.map((x) => ForecastModel.fromMap(x))),
    );
  }
}
