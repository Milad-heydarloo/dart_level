import 'package:flutter/material.dart';

//ma mikhaim ye seriii kar sari va yeseri
//kari ke tool mikeshe benevisim
//async be compuiler mifahmoneh ke man karam tool mikeshe boro
// karam tamom shod ya error midam ya natijaro midam
//

class t_a_a extends StatefulWidget {
  const t_a_a({Key? key}) : super(key: key);

  @override
  State<t_a_a> createState() => _t_a_aState();
}

class _t_a_aState extends State<t_a_a> {
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
                //inja omadam be () {} onPressed goftam ye in kar dokmeh tool mikeshe
                // injori () async {
                onPressed: () async {
                  //bad goftam baraye getfran getData ham sabr kon ba await
                  // vaghtiyam await mizari Future<String?> getData() data khales to <String?> bet mideh
                  var text = await getData();
                  print(text);
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

  //ye method mikhaim benevisim ke tool bekeshe
  void get_down() {
    //Future migeh man ayandam harchi miyad to ayandeh man migiram
    //Future ye method dareh ke karo tool mideh Future.delayed

    //duration ye bazeh zamaniyeh
    var duration = Duration(seconds: 3);
    Future.delayed(
      duration,
      () {
        //inja kari ke mikhaim 3 saniyeh tool bekesharo besh midim
        // be in migan async in programing
        print('hi');
      },
    );
  }

//hala ye method mikham benevisam ba async va await va ye jabe kado
//be esm Future dar ayandeh
  Future<String?> getData() async {
    //in method gharareh meghdariuo to ayandeh bade ejra bargardoneh pass async mishe
    //va chon to ayandeh bade ejra hast bayad bereh to khoroji Future<String?>
    String? result;
    var durations = Duration(seconds: 3);
    //compuiler inja montazer bemon 3saniyeh
    await Future.delayed(
      durations,
      () {
        result = 'manam';
      },
    );
    return result;
  }
}
