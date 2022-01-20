import 'package:flutter/material.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({Key? key}) : super(key: key);

  @override
  _TextFieldScreenState createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  static const descTextStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w800,
    fontFamily: 'Roboto',
    letterSpacing: 0.5,
    fontSize: 18,
    height: 2,
  );

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(color: Colors.black26),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 5,
            children: [
              Image.asset('assets/images/pic1.png'),
              Image.asset('assets/images/pic2.png'),
              Image.asset('assets/images/pic2.png'),
              Image.asset('assets/images/pic1.png'),
              Image.asset('assets/images/pic1.png'),
              Image.asset('assets/images/pic2.png'),
              Image.asset('assets/images/pic2.png'),
              Image.asset('assets/images/pic1.png'),
              Image.asset('assets/images/pic2.png'),
            ],
          ),
        ),
      ),
    );
  }
}
