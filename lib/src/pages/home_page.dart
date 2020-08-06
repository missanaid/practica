import 'package:flutter/material.dart';
// import 'package:practica_componentes/src/pages/lista_page.dart';
import 'package:practica_componentes/src/providers/menu_provider.dart';
import 'package:practica_componentes/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[900],
        title: Text(
          'App de Anime',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
      ),
      body: _lista(),
      backgroundColor: Colors.orange[50],
    );
  }

  Widget _lista() {
    return FutureBuilder(
        future: menuProvider.cargarData(),
        initialData: [],
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          return ListView(
            children: _listaItems(snapshot.data, context),
          );
        });
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    final _estiloTexto = new TextStyle(
        color: Colors.amber[900], fontWeight: FontWeight.bold, fontSize: 20);

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(
          opt['texto'],
          style: _estiloTexto,
        ),
        leading: getIcon(opt['icon']),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.amber[900],
        ),
        onTap: () {
          // final route = MaterialPageRoute(builder: (context) {
          //   return ListaPage();
          // });
          // Navigator.push(context, route);
          Navigator.pushNamed(context, opt['ruta']);
        },
      );
      opciones
        ..add(widgetTemp)
        ..add(Divider(
          height: 15.0,
          thickness: 1,
          color: Colors.amber[900],
        ));
    });
    return opciones;
  }
}
