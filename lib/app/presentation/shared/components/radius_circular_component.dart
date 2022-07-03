import 'package:flutter/material.dart';
import 'package:take_your_umbrella/app/presentation/shared/theme/app_typography.dart';

class RadiusCircular extends StatelessWidget {
  final String value;
  final Icon icon;
  final Color cor;
  const RadiusCircular(
      {Key? key, required this.value, required this.icon, required this.cor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 58,
        width: 61,
        decoration: BoxDecoration(
            color: cor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50.0),
              topRight: Radius.circular(50.0),
              bottomLeft: Radius.circular(50.0),
              bottomRight: Radius.circular(50.0),
            )),
        child: Center(
          child: Column(
            children: [
              icon,
              Text(
                value,
                style: AppTypography.textSmall,
              ),
            ],
          ),
        ));
  }
}
