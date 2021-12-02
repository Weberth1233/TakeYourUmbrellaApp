import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:take_your_umbrella/app/presentation/core/routes/app_routes.dart';
import 'package:take_your_umbrella/app/presentation/shared/theme/app_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);
  //Padronização do o app. Definindo titulo, paginas, pagina inicial e tema
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Take Your Umbrella App',
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.pages,
      initialRoute: AppRoutes.initialRoute,
      theme: AppTheme.defaultTheme,
    );
  }
}
