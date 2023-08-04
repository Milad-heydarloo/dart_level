import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  String? out = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(out!),
            Center(
              child: OutlinedButton(
                onPressed: () {
                  _click();
                },
                child: const Text(
                  'data',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _click() async {
    var res = await Dio().get('https://api.coingecko.com/api/v3/coins/bitcoin');
    var json_object = res.data;
    setState(() {
      out = json_object;
    });
  }
}
