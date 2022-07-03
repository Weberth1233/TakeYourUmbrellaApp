import 'package:flutter/material.dart';
import 'package:take_your_umbrella/app/domain/entities/climate_entity.dart';
import 'package:take_your_umbrella/app/domain/entities/forecast_entity.dart';
import 'package:get/get.dart';

class RoundContainerWidget extends StatelessWidget {
  const RoundContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ClimateEntity climate = Get.arguments;
    final List<ForecastEntity> forecast = climate.forecast;

    return Align(
      alignment: Alignment.topCenter,
      child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
            ),
          ),
          child: Expanded(
              child: ListView.separated(
                  itemBuilder: (ctx, i) => ListTile(
                        leading: forecast[i].description == "Tempo limpo"
                            ? const Icon(
                                Icons.wb_sunny,
                                color: Colors.yellow,
                              )
                            : const Icon(
                                Icons.cloud,
                                color: Colors.blue,
                              ),
                        title: Text(forecast[i].description),
                        subtitle: Text(forecast[i].max.toString() +
                            "º " +
                            forecast[i].min.toString() +
                            "º"),
                        trailing: Text(forecast[i].weekday),
                      ),
                  padding: const EdgeInsets.all(10),
                  separatorBuilder: (_, __) => const Divider(
                        color: Colors.transparent,
                      ),
                  itemCount: forecast.length))),
    );
  }
}
