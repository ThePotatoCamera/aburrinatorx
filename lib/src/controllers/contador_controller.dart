import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ContadorController extends GetxController {
  int _contador = initContador();

  int get contador => _contador;

  final box = GetStorage();

  void increment() {
    _contador++;
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
