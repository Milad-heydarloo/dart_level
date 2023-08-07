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
                  //parametr price avaliyeh
                  var cars =Car.FactoryBuildChine(125.000,'hundi', 'Terili', '1995', true);
                  print(cars.company! + cars.model!);
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
    print(company! +
        model! +
        year! +
        ' va ABS => ' +
        hasABS.toString() +
        ' yani nadareh ');
  }

  //Factory Constructor

//hala shoma mikhai be jaye iran vase EU oropa mashin besazi
//inja be Factory Constructor niyaz darii ta ye mashin vase oropa vasat besazeh
//Factory Constructor karesh ineh ke ye mohasebehii anjam bede va ye object dige b ma bargardoneh
  factory Car.FactoryBuildChine(
      //to in constructor ma ye parametr vorodi be esm
      //price ham mikhaim vase in to tarif mashin besh gheymat bedim
      double price,
      String company,
      String model,
      String year,
      bool hasABS) {
    //inja mitonam begam ye parametr be in model objectam bede
    return Car(
      //inja mitoni az parametr vorodi estefadeh koni hamon price
      ' ' + company + ' Chin '+' price '+price!.toString(),
      ' ' + model + ' Chin ',
      ' ' + year + ' Chin ',
      true,
    );
  }
}
