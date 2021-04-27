import 'package:aburrinatorx/src/controllers/contador_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';

class ContadorBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ContadorController>(() => ContadorController());
  }
}
