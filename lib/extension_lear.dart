import 'package:flutter/material.dart';

class extension_class extends StatefulWidget {
  const extension_class({Key? key}) : super(key: key);

  @override
  State<extension_class> createState() => _extension_classState();
}

class _extension_classState extends State<extension_class> {
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
                  // String s = 'karet harf nadareh';
                  // s.getextensionstringme(s);

                  //estefadeh az class extension jadid
                  var clsss = testclass();
                  clsss.getasli(
                      'miladeshonam ba ghodrat az dare poshtiyeh class miyam to');
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
//Extension chiyeh? salon arashgari zana ke mohashono Extension mikonan
//inam hamon karo mikoneh shoma mitonid be class ha ye serii ghabeliyat
// ba Extension ijad konid va on kari ke mikhaid ro vasaton anjam bede

//mikha be class String ye method shakhsi bedam

//vase in kar
extension StringExtensionsas on String {
  //mikham ye extension ro be esm StringExtension = > be mishe on => va class String bechasbonam
  void getextensionstringme(String s) {
    print(s);
  }
}

//masalan ma ye class misazim va ye ghabeliyat besh midim
class testclass {
  void gettesttext() {
    print('object');
  }
}

//ye ghabeliyat besh midim ba extension

extension extestclass on testclass {
  void getasli(String s) {
    print(s);
  }
}

//alan 2ta ghabeliyat dareh ke yekish azash jodas
