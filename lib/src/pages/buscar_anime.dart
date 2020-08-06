import 'package:flutter/material.dart';

class BuscarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        backgroundColor: Colors.amber[900],
        title: Text('Buscar Anime'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
      ),
    );
  }
}
