import 'package:flutter/material.dart';

class AddProductPage extends StatefulWidget {
  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  TextEditingController imageController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController serialNumberController = TextEditingController();
  TextEditingController purchaseDateController = TextEditingController();
  TextEditingController costController = TextEditingController();
  TextEditingController brandController = TextEditingController();
  TextEditingController modelController = TextEditingController();
  TextEditingController siteController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController categoryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Producto'),
      ),
      body: SingleChildScrollView( // Envuelve todo el contenido con SingleChildScrollView
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: imageController,
                decoration: InputDecoration(labelText: 'URL de la imagen'),
              ),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Nombre del Producto'),
              ),
              TextFormField(
                controller: serialNumberController,
                decoration: InputDecoration(labelText: 'Número de Serie'),
              ),
              TextFormField(
                controller: purchaseDateController,
                decoration: InputDecoration(labelText: 'Fecha de Compra'),
                keyboardType: TextInputType.datetime,
              ),
              TextFormField(
                controller: costController,
                decoration: InputDecoration(labelText: 'Costo'),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                controller: brandController,
                decoration: InputDecoration(labelText: 'Marca'),
              ),
              TextFormField(
                controller: modelController,
                decoration: InputDecoration(labelText: 'Modelo'),
              ),
              TextFormField(
                controller: siteController,
                decoration: InputDecoration(labelText: 'Sitio'),
              ),
              TextFormField(
                controller: locationController,
                decoration: InputDecoration(labelText: 'Ubicación'),
              ),
              TextFormField(
                controller: categoryController,
                decoration: InputDecoration(labelText: 'Categoría'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Tu código de manejo de datos aquí
                },
                child: Text('Agregar Producto'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
