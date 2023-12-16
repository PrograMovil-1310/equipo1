import 'package:flutter/material.dart';

//void main() => runApp(MyApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Asset Dashboard',
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: ListView(
        children: <Widget>[
          DashboardTile(title: 'Numero total de inventario', value: '200', color: Colors.blue),
          DashboardTile(title: 'Valor total del inventario', value: '\$188,159', color: Color.fromARGB(255, 13, 108, 100)),
          //DashboardTile(title: '', value: '\$345,711', color: Color.fromARGB(255, 66, 22, 120)),
         // DashboardTile(title: 'Purchases in Fiscal Year', value: '\$17,610', color: Color.fromARGB(255, 21, 72, 19)),
          // Add more DashboardTile widgets for each data point
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
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(title, style: TextStyle(fontSize: 18, color: Colors.white)),
          Text(value, style: TextStyle(fontSize: 18, color: Colors.white)),
        ],
      ),
    );
  }
}
