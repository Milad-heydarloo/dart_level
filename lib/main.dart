import 'package:dart_level/tafavot_async_await.dart';
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
        body: t_a_a(),
      ),
    );
  }
}
