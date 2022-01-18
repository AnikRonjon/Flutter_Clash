import 'package:flutter/material.dart';
import 'package:flutter_clash/utils/routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscureTextValue = true;
  String _name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/login.png',
                fit: BoxFit.cover,
              ),

              Text("Welcome $_name"),

              TextFormField(
                onChanged: (value) {
                  setState(() {
                    _name = value;
                  });
                },
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
                        ? Icons.visibility
                        : Icons.visibility_off),
                  ),
                ),
              ),

              InkWell(
                  onTap: () {
                    setState(() {
                      changeButton = true;
                    });
                    // Navigator.pushNamed(context, '/');
                  },
                  child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      icon: const Icon(Icons.lock_open),
                      label: const Text('Login'))),
            ],
          ),
        ),
      ),
    );
  }
}
