import 'package:flutter/material.dart';
import 'package:take_your_umbrella/app/domain/entities/climate_entity.dart';
import 'package:get/get.dart';
import 'package:take_your_umbrella/app/presentation/features/details/widgets/round_container_widget.dart';
import 'package:take_your_umbrella/app/presentation/shared/components/radius_circular_component.dart';
import 'package:take_your_umbrella/app/presentation/shared/theme/app_typography.dart';
import 'package:lottie/lottie.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    final ClimateEntity climate = Get.arguments;
    print(climate.imgId);
    final LottieBuilder result;
    if (climate.imgId == "29n" ||
        climate.imgId == "28n" && climate.currently == "noite") {
      result = Lottie.asset('assets/animations/4799-weather-night.json',
          height: 150);
    } else if (climate.imgId == "28n" || climate.imgId == "28") {
      result =
          Lottie.asset('assets/animations/64956-cloudy-icon.json', height: 150);
    } else if (climate.imgId == "27n" || climate.imgId == "27") {
      result = Lottie.asset('assets/animations/64906-sunny.json', height: 150);
    } else if (climate.imgId == "29n" || climate.imgId == "29") {
      result =
          Lottie.asset('assets/animations/64956-cloudy-icon.json', height: 150);
    } else {
      result =
          Lottie.asset('assets/animations/64960-rainy-icon.json', height: 150);
    }
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 23, right: 23),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    climate.city,
                    style: AppTypography.textLarge,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.air, color: Color(0xFFFE9800)),
                      Text(
                        climate.windSpeedy,
                        style: AppTypography.textSmall,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                result,
                Text(
                  climate.temp.toString() + "ºC",
                  style: AppTypography.textBig,
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                climate.description,
                style: AppTypography.textLarge,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Expanded(flex: 1, child: RoundContainerWidget()),
          ],
        ));
  }
}
