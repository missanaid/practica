import 'package:flutter/material.dart';
import 'package:practica_componentes/src/pages/lista_page.dart';
import 'package:practica_componentes/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.amber[900],
        accentColor: Colors.amber[900],
        splashColor: Colors.amber[900],
        backgroundColor: Colors.orange[50],
        textSelectionHandleColor: Colors.amber[900],
        textSelectionColor: Colors.amber[900],
        scaffoldBackgroundColor: Colors.orange[50],
        colorScheme: ColorScheme.light(primary: Colors.amber[900]),
      ),
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('es', 'ES'),
      ],
      title: 'Componentes Práctica App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => ListaPage());
      },
    );
  }
}
