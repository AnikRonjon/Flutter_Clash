import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool obscureTextValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Clash'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              TextFormField(
                maxLength: 20,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: 'Name',
                  hintText: "Enter Name",
                  suffixIcon: Icon(
                    Icons.check_circle,
                  ),
                ),
              ),

              // PassWord Field
              TextFormField(
                maxLength: 20,
                obscureText: obscureTextValue,
                decoration: InputDecoration(
                  icon: const Icon(Icons.lock_clock),
                  labelText: 'Password',
                  hintText: 'Enter Password',
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscureTextValue = !obscureTextValue;
                      });
                    },
                    icon: Icon(obscureTextValue
                        ? Icons.visibility_off
                        : Icons.visibility),
                  ),
                ),
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  icon: const Icon(Icons.lock_open),
                  label: const Text('Login'))
            ],
          ),
        ),
      ),
    );
  }
}
