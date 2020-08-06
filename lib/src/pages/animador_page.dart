import 'dart:math';

import 'package:flutter/material.dart';

class AnimadorPage extends StatefulWidget {
  @override
  _AnimadorPageState createState() => _AnimadorPageState();
}

class _AnimadorPageState extends State<AnimadorPage> {
  double _ancho = 60.0;
  double _alto = 60.0;
  Color _color = Colors.amber[900];

  BorderRadiusGeometry _borde = BorderRadius.circular(5.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[900],
        title: Text('Animador!'),
      ),
      backgroundColor: Colors.orange[50],
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.fastOutSlowIn,
          width: _ancho,
          height: _alto,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borde,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber[900],
        child: Icon(Icons.play_circle_filled),
        onPressed: _cambiaForma,
      ),
    );
  }

  void _cambiaForma() {
    final random = Random();
    setState(() {
      _ancho = random.nextInt(300).toDouble();
      _alto = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
        1,
      );
      _borde = BorderRadius.circular(random.nextInt(150).toDouble());
    });
  }
}
