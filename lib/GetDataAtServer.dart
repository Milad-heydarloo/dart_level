import 'dart:convert';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';

class GetDataAtServers extends StatefulWidget {
  const GetDataAtServers({Key? key}) : super(key: key);

  @override
  State<GetDataAtServers> createState() => _GetDataAtServersState();
}

class _GetDataAtServersState extends State<GetDataAtServers> {
  String? title = '';
  String? url = 'https://via.placeholder.com/150/92c952';
  String? thumbnailUrl = 'https://via.placeholder.com/150/92c952';
 // String? body = '';
  int? albumId = 0;
  int? id = 1;
  bool vis = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            ImageNetwork(image: url!, height: 200, width: 200),
            SizedBox(
              height: 40,
            ),
            ImageNetwork(image: thumbnailUrl!, height: 100, width: 100),
            SizedBox(
              height: 40,
            ),
            Text(
              'userId : $albumId',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'title : $title',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            // Text(
            //   'body : $body',
            //   textAlign: TextAlign.center,
            //   style: TextStyle(
            //     fontSize: 15,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            SizedBox(
              height: 90,
            ),
            Center(
              child: OutlinedButton(
                onPressed: () async {
                  GetData(id!);
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

  void GetData(int ide) async {
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/photos/$ide');
    Response response = await get(uri);
    //age bekhaim az in response ye meghdariu kharej konim az jsonDecode stefadeh mikonim
    var titleR = jsonDecode(response.body)['title'];
//    var bodyR = jsonDecode(response.body)['body'];
    int albumIdR = jsonDecode(response.body)['albumId'];
    var urlR = jsonDecode(response.body)['url'];
    var thumbnailUrlR = jsonDecode(response.body)['thumbnailUrl'];
    setState(() {
      title = titleR;
      albumId = albumIdR+11;
      thumbnailUrl = thumbnailUrlR;
    //  body = bodyR;
      if (!vis) {
        vis = true;
      }
      url = urlR;
      id = id! + 1;
    });
  }
}
