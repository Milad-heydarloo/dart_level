import 'package:dart_level/User.dart';
import 'package:flutter/material.dart';

class ScreenPageGetData extends StatefulWidget {
  //  const ScreenPageGetData({Key? key}) : super(key: key);
  //age bekhaim az ye class dige data begirim  const ScreenPageGetData({Key? key}) : super(key: key);
  //method ro injori minevisim
  ScreenPageGetData(this.name, {Key? key}) : super(key: key);
  Users? name;

  @override
  State<ScreenPageGetData> createState() => _ScreenPageGetDataState();
}

// /\/\/\/\/\/\/\/\/\/\/\
//bala goldoneh
//goldon sabeteh

// \/\/\/\/\/\/\/\/\/\/\/
//paiin gole
//gol rosh mikoneh taghirat dareh

class _ScreenPageGetDataState extends State<ScreenPageGetData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(names!.email),
            ],
          ),
        ),
      ),
    );
  }

  //vase inke dataro begirim az initState estefadeh mikonim
  //aval ye variable misazim
  Users? names ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //inja meghdaro az claas bala tavasot widget class pedar migireh
    //va mirizeh to value to class Gool
    names = widget.name;
  }



}
