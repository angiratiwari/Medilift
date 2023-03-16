import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ui/auth_controller.dart';
import 'package:ui/login_page.dart';
import 'package:get/get.dart';
import 'package:ui/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => DataClass());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

DataClass() {}
