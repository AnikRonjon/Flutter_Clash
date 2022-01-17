import 'package:flutter/material.dart';
import 'package:flutter_clash/screen/home.dart';
import 'package:flutter_clash/screen/login.dart';
import 'package:flutter_clash/screen/registration.dart';

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
      initialRoute: "/",
      routes: {
        "/": (context) => const HomeScreen(),
        "/login": (context) => const LoginScreen(),
        "/registration": (context) => const RegistrationScreen(),
      },
    );
  }
}
