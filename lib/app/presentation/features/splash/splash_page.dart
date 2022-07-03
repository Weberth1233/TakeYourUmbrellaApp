import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:take_your_umbrella/app/presentation/shared/theme/app_typography.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () => Get.toNamed('/home'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
              height: 400,
              width: 400,
              child:
                  Lottie.asset('assets/animations/36416-sharp-umbrella.json')),
          const SizedBox(
            height: 44,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 51, right: 51),
            child: Text(
              'Take Your Umbrella App...',
              style: AppTypography.textLarge,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
