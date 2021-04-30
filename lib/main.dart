import 'package:flutter/material.dart';
import 'package:aburrinatorx/src/views/contador_view.dart';

// Get
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_storage/get_storage.dart';

// Firebase
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';

void main() async {
  await GetStorage.init();
  await Firebase.initializeApp();

  FirebaseAnalytics analytics = FirebaseAnalytics();
  FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: analytics);

  analytics.logAppOpen();

  runApp(GetMaterialApp(
    initialRoute: '/',
    getPages: [
      GetPage(
          name: '/',
          page: () => ContadorView(
                analytics: analytics,
                observer: observer,
              ),
              )
    ],
    title: "Aburrinator X",
    navigatorObservers: <NavigatorObserver>[observer],
  ));
}
