import 'package:http/http.dart';
import 'package:flutter/material.dart';

class GetDataAtServers extends StatefulWidget {
  const GetDataAtServers({Key? key}) : super(key: key);

  @override
  State<GetDataAtServers> createState() => _GetDataAtServersState();
}

class _GetDataAtServersState extends State<GetDataAtServers> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('out!'),
            Center(
              child: OutlinedButton(
                onPressed: () {
                  GetData();
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
}

void GetData() async {
  var uri = Uri.parse('https://jsonplaceholder.typicode.com/photos');
   Response response = await get(uri);
   print(response.body.toString());
}
