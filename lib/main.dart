import 'package:flutter/material.dart';
import 'package:flutter_proyecto_producto/pages/home_page.dart';
import 'package:flutter_proyecto_producto/pages/rutas/rutas.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Asset APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Define el widget de inicio de tu aplicación
      home: const HomePage(),
      // Define las rutas de tu aplicación
      routes: getRoutes(),
    );
  }
}

