import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Clash'),
        actions: [
          IconButton(
            icon: const Icon(Icons.login),
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
          ),
          IconButton(
            icon: const Icon(Icons.app_registration),
            onPressed: () {
              Navigator.pushNamed(context, '/registration');
            },
          )
        ],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              leading: const Icon(
                Icons.smart_button,
                color: Colors.blueAccent,
              ),
              title: const Text('Buttons'),
              onTap: () {
                Navigator.pushNamed(context, '/button');
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.image,
                color: Colors.blueAccent,
              ),
              title: const Text('Images'),
              onTap: () {
                Navigator.pushNamed(context, '/image');
              },
            ),
          ],
        ),
      ),
    );
  }
}
