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
        appBar: AppBar(centerTitle: true,),
        body: ListView.separated(itemBuilder: (context, index){
          return ListTile(
            tileColor: index % 2 == 0 || index == 0,

          )
        }, separatorBuilder: separatorBuilder, itemCount: itemCount)






      ),
    );
  }
}