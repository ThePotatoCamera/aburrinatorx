import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:aburrinatorx/src/controllers/contador_controller.dart';

// Get
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

// Firebase
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';

class ContadorView extends GetView<ContadorController> {
  
  final ContadorController c = ContadorController();
  
  ContadorView(
    {FirebaseAnalytics analytics, FirebaseAnalyticsObserver observer});


  @override
  Widget build(BuildContext context) => GetBuilder(
    init: c,
    builder: (_) => Scaffold(
      appBar: AppBar(
        title: Text("Aburrinator"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Tu nivel de aburrimiento:"),
            Text(_.contador),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _.increment();
        },
      ),
    ),  
      );
}
