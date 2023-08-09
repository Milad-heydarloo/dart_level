import 'package:flutter/material.dart';

class Json_Object_array extends StatefulWidget {
  const Json_Object_array({Key? key}) : super(key: key);

  @override
  State<Json_Object_array> createState() => _Json_Object_arrayState();
}

class _Json_Object_arrayState extends State<Json_Object_array> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('_Json_Object_arrayState!'),
            Center(
              child: OutlinedButton(
                onPressed: () {},
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


}
