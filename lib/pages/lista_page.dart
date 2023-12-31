import 'package:flutter/material.dart';
import 'package:flutter_proyecto_producto/pages/agregar_page.dart';

class Lista extends StatefulWidget {
  const Lista({super.key});
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<Lista> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        appBar: AppBar(
          
          title: const Text('Lista'),
          backgroundColor: Colors.blue,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context); // Acción para ir hacia atrás
            },
            icon: const Icon(Icons.arrow_back), // Icono para retroceder
          ),
          actions: [
            IconButton(
  onPressed: () {
    // Al presionar el botón, navegamos a la página para agregar producto
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AddProductPage()),
    );
  },
  icon: const Icon(Icons.add),
  
),

          ],
        ),
        body: Column(
          children: [
            const Row(
              children: [
                SearchBar(), // Agregamos la barra de búsqueda
                SizedBox(width: 16.0),
                StateDropdown(), // Agregamos la caja de selección "Estado"
              ],
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16.0),
                children: const [
                  NoticiaCard(
                    titulo: 'FNC_Desktop01',
                    contenido: '0001',
                    imagenUrl:
                        'https://conceptodefinicion.de/wp-content/uploads/2011/09/cpu.png',
                  ),
                  NoticiaCard(
                    titulo: 'Canon Printer',
                    contenido: 'SKU421',
                    imagenUrl:
                        'https://i.ebayimg.com/images/g/CSkAAOSwRMhjLJIq/s-l300.png',
                  ),
                  NoticiaCard(
                    titulo: '0153FNC-LAPTOP_0153',
                    contenido: '0153',
                    imagenUrl:
                        'https://i.ebayimg.com/images/g/LwAAAOSw3-ZkL0ye/s-l500.jpg',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Buscar equipo...',
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}

class StateDropdown extends StatefulWidget {
  const StateDropdown({super.key});

  @override
  _StateDropdownState createState() => _StateDropdownState();
}

class _StateDropdownState extends State<StateDropdown> {
  String? _selectedState;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedState,
      onChanged: (String? newValue) {
        setState(() {
          _selectedState = newValue;
        });
      },
      items: <String>['Estado 1', 'Estado 2', 'Estado 3', 'Estado 4']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      hint: const Text('Estado'),
    );
  }
}

class NoticiaCard extends StatelessWidget {
  final String titulo;
  final String contenido;
  final String? imagenUrl;

  const NoticiaCard({super.key, 
    required this.titulo,
    required this.contenido,
    this.imagenUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (imagenUrl != null)
              Expanded(
                flex: 2,
                child: Image.network(
                  imagenUrl!,
                  height: 150.0,
                  fit: BoxFit.scaleDown,
                ),
              ),
            const SizedBox(width: 16.0),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titulo,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Divider(color: Colors.grey),
                  const SizedBox(height: 8.0),
                  Text(
                    contenido,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
