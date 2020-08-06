import 'package:flutter/material.dart';

class ListaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      appBar: AppBar(
        backgroundColor: Colors.amber[900],
        title: Text('Lista de Anime'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _lista1(),
          SizedBox(height: 30.0),
          _lista2(),
          SizedBox(height: 30.0),
          _lista1(),
          SizedBox(height: 30.0),
          _lista2(),
          SizedBox(height: 30.0),
          _lista1(),
          SizedBox(height: 30.0),
          _lista2(),
          SizedBox(height: 30.0),
          _lista1(),
          SizedBox(height: 30.0),
          _lista2(),
          SizedBox(height: 30.0),
          _lista1(),
          SizedBox(height: 30.0),
          _lista2(),
          SizedBox(height: 30.0),
          _lista1(),
          SizedBox(height: 30.0),
          _lista2(),
          SizedBox(height: 30.0),
          _lista1(),
          SizedBox(height: 30.0),
          _lista2(),
          SizedBox(height: 30.0),
        ],
      ),
    );
  }

  Widget _lista1() {
    return Card(
      color: Colors.amber[900],
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          ListTile(
              leading: Icon(
                Icons.photo,
                color: Colors.indigo[900],
              ),
              title: Text(
                'Naruto Shippudden',
                style: TextStyle(
                    color: Colors.indigo[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
              subtitle: Text('La historia del Ninja que quería ser Hokage',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0))),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Cancelar',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  )),
              FlatButton(
                  onPressed: () {},
                  child: Text('Ok',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0))),
            ],
          )
        ],
      ),
    );
  }

  Widget _lista2() {
    final card = Container(
      color: Colors.indigo[900],
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage(
                'assets/b01e96_1fb197b0a51d482aa71c5d7301292020.gif'),
            image: NetworkImage(
                'https://e.an.amtv.pe/redes-sociales-naruto-shippuden-supero-dragon-ball-super-y-fue-anime-mas-visto-ultimos-10-anos-n401200-603x339-643419.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 250.0,
            fit: BoxFit.cover,
          ),
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Naruto',
                  style: TextStyle(
                      color: Colors.amber[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0)))
        ],
      ),
    );
    return Container(
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0),
      ),
      decoration: BoxDecoration(
          color: Colors.indigo[900],
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black54,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 5.0))
          ]),
    );
  }
}
