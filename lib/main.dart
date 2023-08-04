import 'package:flutter/material.dart';
import 'package:dart_level/screen_main.dart';

void main() {
  runApp(_Application());
}

class _Application extends StatelessWidget {
  const _Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: home_screen(),
      ),
    );
  }
}
