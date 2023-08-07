import 'package:flutter/material.dart';

class Enumclassess extends StatefulWidget {
  const Enumclassess({Key? key}) : super(key: key);

  @override
  State<Enumclassess> createState() => _EnumclassessState();
}

class _EnumclassessState extends State<Enumclassess> {
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
                  //be object meghda dehy mikonim va sepas az class enum to ejjra barnameh
                  //dakhel shart ha estefadeh mikonim
                  var cart = Car();
                  cart.name = 'Peykan';
                  cart.topStop = 12;
                  //inja be object vaziyat dadim
                  cart.carsStatus=CarsStatus.START;
                  //inja ham goftim agar object vaziyat
                  // moshabeh vaziyat peraperti entekhab shodeh az class  enum barabar bod vared shod
                  if (cart.topStop! > 10&&cart.carsStatus==CarsStatus.START) {
                    print('Ajab khafan shod');
                  }

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

class Car {
  String? name;
  int? topStop;
  //to class ham tarifesh kardam
  CarsStatus? carsStatus;
}

//vaziyat haye barnameh ro mitoni be class bedii va to jaryan barnameh estefadeh koni
enum CarsStatus {
  SLOW,
  START,
  STOUP
}
