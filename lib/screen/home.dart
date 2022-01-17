import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Clash'),
      ),
      body: Center(
        child: Container(
          child: const Text("Home Page",style: TextStyle(
            color: Colors.redAccent,
            fontSize: 25,
            fontWeight: FontWeight.bold,

          ),),
        ),
      ),
    );
  }
}
