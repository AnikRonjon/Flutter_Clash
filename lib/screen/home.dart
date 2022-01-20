import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: [
          ElevatedButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            icon: const Icon(Icons.login),
            label: const Text('Go to Login'),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/textfield');
              },
              child: const Text('TextField'))
        ],
      ),
    );
  }
}
