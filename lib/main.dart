import 'package:flutter/material.dart';
import 'package:flutter_clash/screen/buttons.dart';
import 'package:flutter_clash/screen/home.dart';
import 'package:flutter_clash/screen/login.dart';
import 'package:flutter_clash/screen/registration.dart';
import 'package:flutter_clash/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "First App",
      home: const HomeScreen(),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.loginRoute: (context) => const LoginScreen(),
        MyRoutes.regRoute: (context) => const RegistrationScreen(),
        MyRoutes.buttonRoute: (context) => const ButtonsScreen(),
      },
    );
  }
}
