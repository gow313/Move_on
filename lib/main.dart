import 'package:cat/route/Approute.dart';
import 'package:cat/route/routing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.splash,
      getPages: AppRouter().getPages,
      transitionDuration: const Duration(milliseconds: 600),
    );
  }
}
