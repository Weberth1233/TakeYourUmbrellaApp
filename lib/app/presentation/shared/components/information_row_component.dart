import 'package:flutter/material.dart';
import 'package:take_your_umbrella/app/presentation/shared/theme/app_typography.dart';

class InformationRow extends StatelessWidget {
  const InformationRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 85, bottom: 10),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 5),
              child: Icon(
                Icons.info,
                size: 25,
                color: Colors.white,
              ),
            ),
            Flexible(
              child: Text(
                'Encontre informações climáticas da sua cidade na tela do seu celular...',
                style: AppTypography.textSmall,
              ),
            )
          ],
        ),
      ),
    );
  }
}
