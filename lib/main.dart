
import 'package:dart_level/map_khodemoneh.dart';
import 'package:dart_level/namedconstructor.dart';

import 'package:flutter/material.dart';


void main() {
  runApp(_Application());
}

class _Application extends StatelessWidget {
  const _Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: namedcons(),
      ),
    );
  }
}
