import 'package:dart_level/GetDataBefourActivity.dart';
import 'package:dart_level/User.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class DioGetData extends StatefulWidget {
  const DioGetData({Key? key}) : super(key: key);

  @override
  State<DioGetData> createState() => _DioGetDataState();
}

class _DioGetDataState extends State<DioGetData> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    GetDio();
  }

  Users? users;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('out!'),
            SizedBox(height: 80,),
            //loading



              SpinKitFadingFour(

                duration: Durations.extralong4,
                color: Colors.blueAccent,
                size: 280.0,


            ),
            Center(
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScreenPageGetData(  userse: users!),
                    ),
                  );
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

  void GetDio() async {
//Dio().get miyad ba map ba response raftar mikoneh
    var response =
        await Dio().get('https://jsonplaceholder.typicode.com/users/1');

    var JsonMapObjct = response.data;

    //hala ye factory constructor
    users = Users.formMapJson(JsonMapObjct);
  }
}
