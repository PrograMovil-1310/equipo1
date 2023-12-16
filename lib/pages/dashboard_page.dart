import 'package:flutter/material.dart';

//void main() => runApp(MyApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Asset Dashboard',
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: ListView(
        children: const <Widget>[
          DashboardTile(title: 'Numero total de inventario', value: '200', color: Colors.blue),
          DashboardTile(title: 'Valor total del inventario', value: '\$188,159', color: Color.fromARGB(255, 13, 108, 100)),
        ],
      ),
    );
  }
}

class DashboardTile extends StatelessWidget {
  final String title;
  final String value;
  final Color color;

  const DashboardTile({Key? key, required this.title, required this.value, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(title, style: const TextStyle(fontSize: 18, color: Colors.white)),
          Text(value, style: const TextStyle(fontSize: 18, color: Colors.white)),
        ],
      ),
    );
  }
}
