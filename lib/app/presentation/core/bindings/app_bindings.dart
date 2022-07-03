import 'package:get/instance_manager.dart';
import 'package:take_your_umbrella/app/infra/core/http/climate_client.dart';
import 'package:take_your_umbrella/app/infra/repositories/climate_repository_impl.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(ClimateClient());
    Get.put(ClimateRepositoryImpl(Get.find<ClimateClient>()));
  }
}
