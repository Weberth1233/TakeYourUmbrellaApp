import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:take_your_umbrella/app/infra/repositories/climate_repository_impl.dart';
import 'package:take_your_umbrella/app/presentation/shared/components/information_row_component.dart';
import 'package:take_your_umbrella/app/presentation/shared/theme/app_typography.dart';
import 'package:geolocator/geolocator.dart';
import 'controller/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final citykey = GlobalKey<FormState>();
    final TextEditingController _controladorcity = TextEditingController();
    final controller =
        Get.put(HomeController(Get.find<ClimateRepositoryImpl>()));

    return GestureDetector(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Form(
            key: citykey,
            child: Padding(
              padding: const EdgeInsets.only(top: 35, left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Digite o nome da cidade que deseja buscar',
                      style: AppTypography.textLarge,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: _controladorcity,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Campo vazio digite algo...';
                      }
                    },
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                        isDense: true, // Added this
                        contentPadding: EdgeInsets.all(5),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 20,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        hintText: "Ex: Palmas, TO",
                        fillColor: Colors.white),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFFFE9800)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () => {
                      if (citykey.currentState?.validate() == false)
                        {
                          print(citykey.currentState?.validate()),
                        }
                      else
                        {
                          controller.getClimateByName(_controladorcity.text),
                          _controladorcity.text = "",
                        }
                    },
                    child: Text(
                      'Buscar',
                      style: AppTypography.textButton,
                    ),
                  ),
                  Obx(
                    () => controller.isLoading.value
                        ? const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Center(
                              child: SizedBox(
                                height: 35,
                                width: 35,
                                child: CircularProgressIndicator.adaptive(
                                  strokeWidth: 5,
                                  backgroundColor: Color(0xFFFE9800),
                                  semanticsLabel: "Carregando...",
                                ),
                              ),
                            ),
                          )
                        : Container(),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Center(
                      child: Text(
                    "Ou",
                    style: AppTypography.textLarge,
                  )),
                  const SizedBox(
                    height: 14,
                  ),
                  Center(
                    child: Text(
                      "Clique para localizarmos sua região...",
                      style: AppTypography.textMedium,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: 130,
                      height: 130,
                      child: IconButton(
                        color: const Color(0xFFFE9800),
                        icon: const Icon(
                          Icons.navigation_rounded,
                          size: 130,
                        ),
                        onPressed: () {
                          controller.getLocationLatLong();
                        },
                      ),
                    ),
                  ),
                  const InformationRow(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
