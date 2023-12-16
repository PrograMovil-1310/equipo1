import 'package:flutter/material.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({super.key});

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
        title: const Text('Agregar Producto'),
      ),
      body: SingleChildScrollView( // Envuelve todo el contenido con SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: imageController,
                decoration: const InputDecoration(labelText: 'URL de la imagen'),
              ),
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Nombre del Producto'),
              ),
              TextFormField(
                controller: serialNumberController,
                decoration: const InputDecoration(labelText: 'Número de Serie'),
              ),
              TextFormField(
                controller: purchaseDateController,
                decoration: const InputDecoration(labelText: 'Fecha de Compra'),
                keyboardType: TextInputType.datetime,
              ),
              TextFormField(
                controller: costController,
                decoration: const InputDecoration(labelText: 'Costo'),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                controller: brandController,
                decoration: const InputDecoration(labelText: 'Marca'),
              ),
              TextFormField(
                controller: modelController,
                decoration: const InputDecoration(labelText: 'Modelo'),
              ),
              TextFormField(
                controller: siteController,
                decoration: const InputDecoration(labelText: 'Sitio'),
              ),
              TextFormField(
                controller: locationController,
                decoration: const InputDecoration(labelText: 'Ubicación'),
              ),
              TextFormField(
                controller: categoryController,
                decoration: const InputDecoration(labelText: 'Categoría'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Tu código de manejo de datos aquí
                },
                child: const Text('Agregar Producto'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
