import 'package:flutter/material.dart';
import 'package:practica_componentes/src/pages/animador_page.dart';
import 'package:practica_componentes/src/pages/buscar_anime.dart';
import 'package:practica_componentes/src/pages/home_page.dart';
import 'package:practica_componentes/src/pages/ingresar_page.dart';
import 'package:practica_componentes/src/pages/lista_page.dart';
import 'package:practica_componentes/src/pages/listview_page.dart';
import 'package:practica_componentes/src/pages/opening_page.dart';
import 'package:practica_componentes/src/pages/slider_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'anime': (BuildContext context) => ListaPage(),
    'opening': (BuildContext context) => OpeningPage(),
    'search': (BuildContext context) => BuscarPage(),
    'animatedContainer': (BuildContext context) => AnimadorPage(),
    'inputs': (BuildContext context) => IngresarPage(),
    'slider': (BuildContext context) => SliderPage(),
    'list': (BuildContext context) => ListPage(),
  };
}
