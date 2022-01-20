import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _passwordVisibility = true;
  String _name = '';
  String _password = '';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            const SizedBox(
              height: 100,
            ),
            TextFormField(
                maxLength: 20,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter Your Name';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  label: const Text('Name'),
                  hintText: 'Enter Name',
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon((Icons.check_circle_outline)),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    _name = value;
                  });
                }),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              obscureText: _passwordVisibility,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter Your Password';
                }
              },
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter Password',
                enabledBorder: const UnderlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(_passwordVisibility
                      ? Icons.visibility_off
                      : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _passwordVisibility = !_passwordVisibility;
                    });
                  },
                ),
              ),
              onChanged: (value) {
                setState(() {
                  _password = value;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: const Text('Login'),
            ),
            const SizedBox(
              height: 30,
            ),
            Text('Your name: $_name'),
            Text('Your Pass: $_password')
          ],
        ),
      ),
    );
  }
}
