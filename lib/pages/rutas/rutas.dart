import 'package:flutter/material.dart';
import 'package:flutter_proyecto_producto/pages/dashboard_page.dart';
import 'package:flutter_proyecto_producto/pages/home_page.dart';
import 'package:flutter_proyecto_producto/pages/lista_page.dart';
import 'package:flutter_proyecto_producto/pages/producto_page.dart';
import 'package:flutter_proyecto_producto/pages/scan_page.dart';


Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/home': (context) => const HomePage(),
    '/lista': (context) => const Lista(),
    '/dashboard': (context) =>const Dashboard(),
    '/scan': (context) =>const Scan(),
    //'/login': (context) =>LoginScreen(),
    '/producto': (context) => ProductDetailsPage(
          product: Product(
            image:
                'https://m.media-amazon.com/images/I/71E1n8T+InL._AC_SL1435_.jpg',
            name: 'Lenovo IdeaPad 3 Laptop',
            serialNumber: '123456789',
            purchaseDate: DateTime.now(),
            cost: 649.00,
            brand: 'Lenovo',
            model: 'IdeaPad',
            site: 'Bodega',
            location: 'SPS',
            category: 'Laptop',
          ),
        ),
  };
}
