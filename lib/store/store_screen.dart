import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget{
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Store"), backgroundColor: Colors.cyan,),

      body: ListView(
        children: [
          ListTile(
            title: Text("Rojo"),
            subtitle: Text("Es el subtitulo de este elemento, es un elemento de la lista"),
            leading: Icon(Icons.fifteen_mp),
            trailing: IconButton(onPressed: () => { print("Holaa")}, icon: Icon(Icons.eighteen_up_rating)),
            onTap: () => print("He pulsado aqui TAP"),
          ),
          ListTile(title: Text("verde"),),
        ],
      ),
    );
  }







}