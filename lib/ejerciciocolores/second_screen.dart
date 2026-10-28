import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget{
  Color _color;

  SecondScreen({super.key, required this._color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Color"),),
      backgroundColor: _color,
    );
  }
}