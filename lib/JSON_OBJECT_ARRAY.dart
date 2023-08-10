import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Json_Object_array extends StatefulWidget {
  const Json_Object_array({Key? key}) : super(key: key);

  @override
  State<Json_Object_array> createState() => _Json_Object_arrayState();
}

class _Json_Object_arrayState extends State<Json_Object_array> {
  String? txt;
  String? txt2;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$txt'),
            Text('$txt2'),
            Center(
              child: OutlinedButton(
                onPressed: () {
                  _get_data();
                },
                child: const Text(
                  '_Json_Object_arrayState',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _get_data() async {
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/users/1');
    Response response = await get(uri);
    setState(() {
      //jsonDecode(response.body)['name']; ba in key dadi value gerfti
      txt = jsonDecode(response.body)['name'];
      //jsonDecode(response.body)['company']['catchPhrase']; ba in 2ta key dadi value gerfti
      //"company": {
      // "name": "Romaguera-Crona",
      // "catchPhrase": "Multi-layered client-server neural-net",
      txt = jsonDecode(response.body)['company']['catchPhrase'];
      //method paiin az address geo ke mishe mogheyat joghrafiyaii ro migireh ke tosh
      // ye tool va arze joghrafiyaiiye
      txt2 = jsonDecode(response.body)['address']['geo']['lat'];
    });
  }
}
