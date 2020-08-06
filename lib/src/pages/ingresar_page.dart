import 'package:flutter/material.dart';

class IngresarPage extends StatefulWidget {
  @override
  _IngresarPageState createState() => _IngresarPageState();
}

class _IngresarPageState extends State<IngresarPage> {
  String _anime = '';
  String _fecha = '';
  String _opcion = 'Seleccionar...';
  List<String> _generos = [
    'Seleccionar...',
    'Shonen',
    'Shojo',
    'Seinen',
    'Mecha',
    'Ecchi',
    'Harem',
  ];

  TextEditingController _fechaController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[900],
        title: Text('Añadir Anime'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
        children: <Widget>[
          _nombreAnime(),
          Divider(),
          _descAnime(),
          Divider(),
          _cantCapitulos(),
          Divider(),
          _fechaEstreno(context),
          Divider(),
          _crearDropDown(),
          Divider(),
          FlatButton(onPressed: null, child: null)
        ],
      ),
      backgroundColor: Colors.orange[50],

    );

  }

  Widget _nombreAnime() {
    return TextField(
      cursorColor: Colors.amber[900],
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          counter: Text('Caracteres: ${_anime.length}'),
          hintText: 'Nombre del Anime',
          hintStyle: TextStyle(color: Colors.amber[900]),
          labelText: 'Anime',
          labelStyle: TextStyle(color: Colors.amber[900]),
          helperText: 'Ingrese nombre del Anime',
          suffixIcon: Icon(
            Icons.account_box,
            color: Colors.amber[900],
          ),
          icon: Icon(
            Icons.person,
            color: Colors.amber[900],
          )),
      onChanged: (valor) {
        setState(() {
          _anime = valor;
        });
      },
    );
  }

  Widget _descAnime() {
    return TextField(
      cursorColor: Colors.amber[900],
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: 'Descripción del Anime',
          hintStyle: TextStyle(color: Colors.amber[900]),
          labelText: 'Descripción',
          labelStyle: TextStyle(color: Colors.amber[900]),
          helperText: 'Ingrese su Email',
          suffixIcon: Icon(Icons.textsms, color: Colors.amber[900]),
          icon: Icon(
            Icons.description,
            color: Colors.amber[900],
          )),
    );
  }

  Widget _cantCapitulos() {
    return TextField(
      cursorColor: Colors.amber[900],
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          hintText: 'Cantidad de Capítulos',
          hintStyle: TextStyle(color: Colors.amber[900]),
          labelText: 'Capítulos',
          labelStyle: TextStyle(color: Colors.amber[900]),
          helperText: 'Ingrese cantidad de Capítulos',
          suffixIcon: Icon(
            Icons.create_new_folder,
            color: Colors.amber[900],
          ),
          icon: Icon(
            Icons.format_list_numbered,
            color: Colors.amber[900],
          )),
    );
  }

  Widget _fechaEstreno(BuildContext context) {
    return TextField(
      controller: _fechaController,
      enableInteractiveSelection: false,
      cursorColor: Colors.amber[900],
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: 'Fecha de Estreno',
        hintStyle: TextStyle(color: Colors.amber[900]),
        labelText: 'Fecha de Estreno',
        labelStyle: TextStyle(color: Colors.amber[900]),
        helperText: 'Ingrese Fecha de Estreno',
        suffixIcon: Icon(
          Icons.date_range,
          color: Colors.amber[900],
        ),
        icon: Icon(
          Icons.calendar_today,
          color: Colors.amber[900],
        ),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  void _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(1910),
        lastDate: new DateTime(2030),
        locale: Locale('es', 'ES'),
        helpText: 'SELECCIONAR FECHA');
    if (picked != null) {
      setState(() {
        _fecha =
            picked.toString().substring(0, 10).split("-").reversed.join("/");
        _fechaController.text = _fecha;
      });
    }
  }

  List<DropdownMenuItem<String>> getopt() {
    List<DropdownMenuItem<String>> lista = new List();
    _generos.forEach((genero) {
      lista.add(
        DropdownMenuItem(
          child: Text(genero),
          value: genero,
        ),
      );
    });
    return lista;
  }

  Widget _crearDropDown() {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Icon(
          Icons.contacts,
          color: Colors.amber[900],
        ),
        SizedBox(
          width: 15.0,
        ),
        Text(
          'Seleccione Género: ',
          style: TextStyle(color: Colors.black45, fontSize: 15),
        ),
        SizedBox(
          width: 40.0,
        ),
        DropdownButton(
          dropdownColor: Colors.orange[50],
          style: TextStyle(color: Colors.amber[900], fontSize: 15),
          focusColor: Colors.amber[900],
          iconEnabledColor: Colors.amber[900],
          value: _opcion,
          items: getopt(),
          onChanged: (opt) {
            setState(() {
              _opcion = opt;
            });
          },
        )
      ],
    );
  }
}
