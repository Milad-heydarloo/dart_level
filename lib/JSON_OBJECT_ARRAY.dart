import 'dart:convert';
import 'package:dart_level/GetDataBefourActivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';
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
            Container(
              height: 400,
              width: 400,
              child: Lottie.network(

                  'https://assets-v2.lottiefiles.com/a/053201ee-116e-11ee-9953-db82c80cd2e4/VVOLWkKqWc.json'),
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

      _get_USERS();


    });
  }


  void _get_USERS()async{
    var uri=Uri.parse('https://jsonplaceholder.typicode.com/users');
    // https://jsonplaceholder.typicode.com/users JSON ARRAY IN USERS

    Response response=await get(uri);
    //in chon ye array hast ma az andis 0 rom ke mishe khoneh aval araye estefadeh mikonim ta
    //esm user ro az khoneh 0 ke mishe aval begirim
    String website=jsonDecode(response.body)[0]['website'];

   String nam='';
    //gerftan esm user ha hamashon dast bezan be mamashon
    for (int i = 0; i < 10; i++) {
      nam = jsonDecode(response.body)[i]['name'];
    }
    Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenPageGetData(nam),),);
  }
}
