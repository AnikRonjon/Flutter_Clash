import 'package:flutter/material.dart';

class ButtonsScreen extends StatefulWidget {
  const ButtonsScreen({Key? key}) : super(key: key);

  @override
  _ButtonsScreenState createState() => _ButtonsScreenState();
}

class _ButtonsScreenState extends State<ButtonsScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {}, child: const Text('ElevatedButton')),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.device_unknown),
              label: const Text('ElevetedButton.icon'),
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {},
              child: const Text('MaterialButton'),
              color: Colors.blue,
              textColor: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            FlatButton(
              onPressed: () {},
              child: const IconTheme(
                data: IconThemeData(color: Colors.white),
                child: Text('FlatButton'),
              ),
              color: Colors.blue,
              textColor: Colors.white,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BackButton(
                  onPressed: () {},
                  color: Colors.red,
                ),
                CloseButton(
                  onPressed: () {},
                  color: Colors.red,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
