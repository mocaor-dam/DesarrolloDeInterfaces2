import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/ejerciciocolores/second_screen.dart';


void main() {
  runApp(
    const MaterialApp(
      home: Ejercicio5(),
    ),
  );
}

class Ejercicio5 extends StatelessWidget {
  const Ejercicio5({super.key});

  @override
  Widget build(BuildContext context) {

    final items = ["Rojo", "Verde", "Azul", "Amarillo"];
    final colores = [Colors.red, Colors.green, Colors.blue, Colors.amber];

    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("PROFILE"), backgroundColor: Colors.cyan,
      ),
      body: ListView.separated(
        itemCount: items.length,

        separatorBuilder: (context, index) => const Divider(
          color: Colors.grey,
          thickness: 1,
        ),

        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            trailing: IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) =>  SecondScreen(color: colores[index],)),
              ),
              icon: const Icon(Icons.arrow_right),
            ),
          );
        },
      ),
    );
  }
}