import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Asset app',
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 20, 79, 167),
      ),
      drawer: const MainDrawer(),
      body: Center(
        child: ListView(
          children: <Widget>[
            DrawerItem(
              icon: Icons.bar_chart,
              text: 'Dashboard',
              onTap: () => Navigator.pushNamed(context, '/dashboard'),
            ),
            DrawerItem(
              icon: Icons.list,
              text: 'Lista',
              onTap: () => Navigator.pushNamed(context, '/lista'),
            ),
            DrawerItem(
              icon: Icons.web_asset,
              text: 'Producto',
              onTap: () => Navigator.pushNamed(context, '/producto'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Actions',
          ),
        ],
      ),
    );
  }
}

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'MENU Inventario',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
              'zarivera@unitec.edu',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://png.pngtree.com/png-vector/20190726/ourmid/pngtree-delivery-checklist-icon-for-your-project-png-image_1599187.jpg',
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 10, 75, 136),
            ),
          ),
          DrawerItem(
            icon: Icons.bar_chart,
            text: 'Dashboard',
            onTap: () => Navigator.pushNamed(context, '/dashboard'),
          ),
          DrawerItem(
            icon: Icons.format_list_bulleted,
            text: 'Lista',
            onTap: () => Navigator.pushNamed(context, '/lista'),
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends ListTile {
  DrawerItem({
    Key? key,
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) : super(
          key: key,
          leading: Icon(icon),
          title: Text(
            text,
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          onTap: onTap,
        );
}
