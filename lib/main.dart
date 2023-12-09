import 'package:flutter/material.dart';
import 'package:flutter_proyecto_producto/pages/home_page.dart';
import 'package:flutter_proyecto_producto/pages/rutas/rutas.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tu Aplicación',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Define el widget de inicio de tu aplicación
      home: const HomePages(),
      // Define las rutas de tu aplicación
      routes: getRoutes(),
    );
  }
}
