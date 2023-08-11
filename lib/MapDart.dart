import 'package:dart_level/GetDataBefourActivity.dart';
import 'package:dart_level/User.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MapDarte extends StatefulWidget {
  const MapDarte({Key? key}) : super(key: key);

  @override
  State<MapDarte> createState() => _MapDarteState();
}

class _MapDarteState extends State<MapDarte> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    liste();
    GetAllUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void liste() {
    List<dynamic> list = [1, 2, 3, 4];
    print(list);
    //ye list integer sakhtam ke list bala ro map mikoneh
    //va har kodom az khoneha ro +2 mikoneh
    //va mikoneh to list va tabdilesh mikoneh be int
    List<int> list2 = list.map((e) => e + 2).toList().cast<int>();
    print(list2);
  }

  void GetAllUsers() async {
    var response =
        await Dio().get('https://jsonplaceholder.typicode.com/users/');


    //inja miyaiim ye list tarif mikonim
    //response.data ro .map<Users>() mikonim ke tosh .map<Users>((jsonMapObject)
    //migim vasamon besaz => Users.formMapJson(jsonMapObject))
    //va dar nahayat list kon
    List<Users> users = response.data
        .map<Users>((jsonMapObject) => Users.formMapJson(jsonMapObject))
        .toList();
    print(users);


//list ro befrest
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ScreenPageGetData(
            userse: users,
          ),
        ));
  }
}
