import 'package:get/get.dart';
import 'package:take_your_umbrella/app/domain/repositories/climate_repository.dart';
import 'package:take_your_umbrella/app/presentation/features/details/details_page.dart';
import 'package:geolocator/geolocator.dart';

class HomeController extends GetxController {
  final ClimateRepository repository;
  final isLoading = false.obs;

  HomeController(this.repository);

  Future<void> getClimateByName(String name) async {
    try {
      isLoading.value = true;
      final result = await repository.getClimate(name);
      result.fold(
        (l) {
          Get.defaultDialog(title: 'Erro no Servidor');
        },
        (climate) {
          isLoading.value = false;
          Get.to(
            () => const DetailsPage(),
            arguments: climate,
          );
        },
      );
    } catch (_) {
      isLoading.value = false;
    }
  }

  Future<void> getLocationLatLong() async {
    try {
      isLoading.value = true;
      Position posicao = await Geolocator.getCurrentPosition();
      final result =
          await repository.getLocation(posicao.latitude, posicao.longitude);
      result.fold(
        (l) {
          Get.defaultDialog(title: 'Erro no Servidor');
        },
        (climate) {
          isLoading.value = false;
          Get.to(
            () => const DetailsPage(),
            arguments: climate,
          );
        },
      );
    } catch (_) {
      isLoading.value = false;
    }
  }

  pegarLocalizacao() async {
    Position posicao = await Geolocator.getCurrentPosition();
    return posicao;
  }
}
