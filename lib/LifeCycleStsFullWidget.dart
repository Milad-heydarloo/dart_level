import 'package:flutter/material.dart';

class LifeCycle extends StatefulWidget {
  const LifeCycle({Key? key}) : super(key: key);

  @override
  State<LifeCycle> createState() => _LifeCycleState();
}

class _LifeCycleState extends State<LifeCycle> {
  //Aval App init misshe
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  //bad build StatefulWidget yani sakhte mishe
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
  //vaghti in safhe baste she seda mizanim
  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }
}
