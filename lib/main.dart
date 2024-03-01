import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sun_eye/core/app_theme.dart';
import 'package:flutter_sun_eye/src/controller/cart_controller.dart';
import 'package:flutter_sun_eye/src/controller/glasse_controller.dart';
import 'package:flutter_sun_eye/src/view/start_screen.dart';
import 'package:get/get.dart';

import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Get.put<GlassesController>(GlassesController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: StartScreen(),
      initialBinding: BindingsBuilder(() {
        Get.put<GlassesController>(GlassesController());
        Get.put<CartController>(CartController());
      }),
    );
  }
}
