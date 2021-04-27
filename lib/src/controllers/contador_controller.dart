import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ContadorController extends GetxController {
  RxInt contador = initContador().obs;

  void increment() {
    final box = GetStorage();

    contador++;
    box.write('contador', contador);
    }
}

int initContador() {
  final box = GetStorage();

  if (box.hasData('contador')) {
    return box.read('contador');
  } else {
    return 0;
  }
}
