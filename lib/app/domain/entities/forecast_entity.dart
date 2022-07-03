import 'package:equatable/equatable.dart';

class ForecastEntity extends Equatable {
  final String date;
  final String weekday;
  final int max;
  final int min;
  final String description;
  final String condition;

  const ForecastEntity(
      {required this.date,
      required this.weekday,
      required this.max,
      required this.min,
      required this.description,
      required this.condition});

  @override
  // TODO: implement props
  List<Object?> get props => [
        date,
        weekday,
        max,
        min,
        description,
        condition,
      ];
}
