
import 'package:dart_level/GetDataAtServer.dart';
import 'package:dart_level/JSON_OBJECT_ARRAY.dart';
import 'package:dart_level/enumMe.dart';

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
        body: Json_Object_array(),
      ),
    );
  }
}
