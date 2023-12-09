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
      body: Padding(
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
                // Obtener los valores ingresados por el usuario
                String image = imageController.text;
                String name = nameController.text;
                String serialNumber = serialNumberController.text;
                DateTime purchaseDate = DateTime.tryParse(purchaseDateController.text) ?? DateTime.now();
                double cost = double.tryParse(costController.text) ?? 0.0;
                String brand = brandController.text;
                String model = modelController.text;
                String site = siteController.text;
                String location = locationController.text;
                String category = categoryController.text;

                // Aquí se puede realizar alguna acción con la información del nuevo producto
                // Por ejemplo, agregarlo a una lista, guardar en una base de datos, etc.
                // Por ahora, simplemente imprimir los datos del nuevo producto
                print('Nuevo Producto:');
                print('Imagen: $image');
                print('Nombre: $name');
                print('Número de Serie: $serialNumber');
                print('Fecha de Compra: $purchaseDate');
                print('Costo: $cost');
                print('Marca: $brand');
                print('Modelo: $model');
                print('Sitio: $site');
                print('Ubicación: $location');
                print('Categoría: $category');
              },
              child: Text('Agregar Producto'),
            ),
          ],
        ),
      ),
    );
  }
}
