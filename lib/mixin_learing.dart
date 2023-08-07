import 'package:flutter/material.dart';

class mixinAst extends StatefulWidget {
  const mixinAst({Key? key}) : super(key: key);

  @override
  State<mixinAst> createState() => _mixinAstState();
}

class _mixinAstState extends State<mixinAst> {
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
                  print('text');
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


// ma ye raftari daram ke mikham bein mojodiyat ham share beshe


class Animal {
  void Brith(){
  }
}
//mahi ba ensan mitonan shena konan hala ke daran extends az Animal
// ama morgh ke nemitoneh shena koneh
// vase hamin ma az mixin estefadeh mikonim ta ye raftar ro share konim beyne class ha

mixin Swimming{
  void swim(){

  }
}

// hala ke class mixin Swimming{ ro sakhtin vaghteshe ke baghiyeh class ha
// ham azash estefadeh konan va be jaye extends az with estefadeh mikonim

class Fish extends Animal with Swimming {}

class Human extends Animal with Swimming{}

class Chicken extends Animal{}
