import 'package:flutter/material.dart';

// Clase que representa un producto
class Product {
  final String image;
  final String name;
  final String serialNumber;
  final DateTime purchaseDate;
  final double cost;
  final String brand;
  final String model;
  final String site;
  final String location;
  final String category;

  Product({
    required this.image,
    required this.name,
    required this.serialNumber,
    required this.purchaseDate,
    required this.cost,
    required this.brand,
    required this.model,
    required this.site,
    required this.location,
    required this.category,
  });
}

// Página para mostrar los detalles del producto
class ProductDetailsPage extends StatelessWidget {
  final Product product;

  const ProductDetailsPage({super.key, required this.product});

  Widget _buildDivider() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Divider(
        color: Colors.black,
        height: 3.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles del Producto'),
        actions: [
          PopupMenuButton<String>(
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'Editar',
                child: Text('Editar'),
              ),
              const PopupMenuItem<String>(
                value: 'Check Out',
                child: Text('Check Out'),
              ),
              const PopupMenuItem<String>(
                value: 'Check In',
                child: Text('Check In'),
              ),
              const PopupMenuItem<String>(
                value: 'Perdido',
                child: Text('Perdido'),
              ),
              const PopupMenuItem<String>(
                value: 'Reparacion',
                child: Text('Reparacion'),
              ),
              const PopupMenuItem<String>(
                value: 'Dañado',
                child: Text('Dañado'),
              ),
              const PopupMenuItem<String>(
                value: 'Eliminar',
                child: Text('Eliminar'),
              ),
            ],
            onSelected: (String value) {
              // Manejar las acciones según la opción seleccionada
              print('Opción seleccionada: $value');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              product.image,
              width: 50,
              height: 50,
              fit: BoxFit.scaleDown,
            ),
            const SizedBox(height: 20),
            Text(
              'Nombre del Producto: ${product.name}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            _buildDivider(),
            Text('Número de Serie: ${product.serialNumber}'),
            _buildDivider(),
            Text('Fecha de Compra: ${product.purchaseDate.toString()}'),
            _buildDivider(),
            Text('Costo: \$${product.cost.toStringAsFixed(2)}'),
            _buildDivider(),
            Text('Marca: ${product.brand}'),
            _buildDivider(),
            Text('Modelo: ${product.model}'),
            _buildDivider(),
            Text('Sitio: ${product.site}'),
            _buildDivider(),
            Text('Ubicación: ${product.location}'),
            _buildDivider(),
            Text('Categoría: ${product.category}'),
            _buildDivider(),
            const SizedBox(height: 30),
            Container(
              alignment: Alignment.center,
              child: DropdownButton<String>(
                hint: const Text('Acciones'),
                iconSize: 50,
                style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                items: <String>['Check out', 'Check in', 'Reparacion', 'Dañado']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  print(newValue);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  Product productoEjemplo = Product(
    image: 'https://m.media-amazon.com/images/I/71E1n8T+InL._AC_SL1435_.jpg',
    name: 'Lenovo IdeaPad 3 Laptop',
    serialNumber: '123456789',
    purchaseDate: DateTime.now(),
    cost: 649.00,
    brand: 'Lenovo',
    model: 'IdeaPad',
    site: 'Bodega',
    location: 'SPS',
    category: 'Laptop',
  );

  runApp(MaterialApp(
    home: ProductDetailsPage(product: productoEjemplo),
  ));
}
