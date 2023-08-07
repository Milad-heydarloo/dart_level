import 'package:flutter/material.dart';

class namedcons extends StatefulWidget {
  const namedcons({Key? key}) : super(key: key);

  @override
  State<namedcons> createState() => _namedconsState();
}

class _namedconsState extends State<namedcons> {
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
                 Car.withoutABS('Iran Khodro ', ' Peykan ', ' 1357 ');

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

  //age bekhaii az har object ye model motefvet besazi mitoni tavasot named constructor
  // in karo bokoni
class Car {
  String? company;
  String? model;
  String? year;
  bool? hasABS;

  //ye constructor misazam
  Car(this.company, this.model, this.year, this.hasABS);

  //age in class bekhad ba ye constructor digeh iiii sakhte beshe bayad tavasote
  //named constructor sakhteh beshe
  //mesal man mikham ye serii az mashinam bedoneh ABS sakhteh beshan
  Car.withoutABS(this.company, this.model, this.year) {
    this.hasABS = false;
    print(company!+model!+year!+' va ABS => '+hasABS.toString()+' yani nadareh ');

  }
}
