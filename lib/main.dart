import 'package:aburrinatorx/src/bindings/contador_bindings.dart';
import 'package:aburrinatorx/src/views/contador_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  FirebaseApp defaultApp = await Firebase.initializeApp();

  runApp(GetMaterialApp(initialRoute: '/', getPages: [
    GetPage(name: '/', page: () => ContadorView(), binding: ContadorBinding()),
  ]));
}
