import 'package:flutter/material.dart';

class MapKhodemoneh extends StatefulWidget {
  const MapKhodemoneh({Key? key}) : super(key: key);

  @override
  State<MapKhodemoneh> createState() => _MapKhodemonehState();
}

class _MapKhodemonehState extends State<MapKhodemoneh> {
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
                  learingmap();
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

void learingmap() {
  //ma to list ye seriii dadeh zakhireh mikonim me in list zir
  List<int> lis = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  print(lis[0]);
  // ba in kar meghdar list ro barmigardoni

  //map dastanesh ineh ke behesh behesh joft key value midim
  //ye no zakhireh etelaate
  //meghdar dehy
  Map<String, int> map = {'car1': 123, 'car2': 2, 'car3': 3};
//khondan etelaat ba dadane key sorat migirad
  print(map['car1']);
// intory ham mitonid value tosh ro taghir bedin
  print(map['car1'] = 300);
}
