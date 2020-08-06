import 'package:flutter/material.dart';

class OpeningPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        backgroundColor: Colors.amber[900],
        title: Text('Lista de Openings'),
      ),
      body: Center(
          child: RaisedButton(
        onPressed: () => _mostrarLyrics(context),
        child: Text(
          'Ver letra del Opening',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        color: Colors.amber[900],
        textColor: Colors.white,
        shape: StadiumBorder(),
      )),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber[900],
          child: Icon(Icons.keyboard_backspace),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }

  _mostrarLyrics(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          title: Text(
            'Naruto Opening 1',
            style: TextStyle(
                color: Colors.amber[900],
                fontWeight: FontWeight.bold,
                fontSize: 15),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[Text('Nanimo, Nanimo Ma da shiranu')],
          ),
          actions: <Widget>[
            FlatButton(
                textColor: Colors.amber[900],
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  'Cancelar',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            FlatButton(
                textColor: Colors.amber[900],
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  'Ok',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
          ],
        );
      },
    );
  }
}
