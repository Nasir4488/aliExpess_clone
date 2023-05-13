import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Views/splashScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(249,249,251,255),

        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
