import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
runApp(const Ejercicio4());
}

class Ejercicio4 extends StatelessWidget{
  const Ejercicio4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text("Listview")),
        body: SafeArea(
          child: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                tileColor: index % 2 == 0 || index == 0
                    ? Colors.red[200]
                    : Colors.green[200],
                leading: Icon(Icons.numbers),
                iconColor: index % 2 == 0 || index == 0
                    ? Colors.green[200]
                    : Colors.red[200],
                title: Text(
                  index % 2 == 0 || index == 0
                      ? "Numero Par: $index"
                      : "Numero Impar: $index",
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                height: 0,
                color: index % 2 == 0 || index == 0
                    ? Colors.black
                    : Colors.blue,
              );
            },
            itemCount: 51,
          ),
        ),
      ),
    );
  }
}