import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Ejercicio2());
}

class Ejercicio2 extends StatelessWidget {
  const Ejercicio2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: Column(
              children: [
                Expanded(child: Row(
                  children: [
                    Expanded(child: Column(
                      children: [
                        Expanded(flex: 1,child: Container(color: Colors.blue,)),
                        Expanded(flex: 4, child: Container(color: Colors.green,)),
                      ],
                    )),
                    Expanded(child: Container(color: Colors.amberAccent,))

                  ],
                )),
                Expanded(child: Container(color: Colors.red,)),
              ],
            )


        )
    );
  }
}
