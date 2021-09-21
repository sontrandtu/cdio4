import 'package:cdio4/constants/controllerBindings.dart';
import 'package:cdio4/constants/routes.dart';
import 'package:cdio4/constants/theme.dart';
import 'package:cdio4/screens/root.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  //firebase init
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ControllerBindings(),
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme,
      routes: routes,
      home: Root(),
    );
  }
}
