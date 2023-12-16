import 'package:flutter/material.dart';
import 'package:flutter_proyecto_producto/pages/rutas/rutas.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tu Aplicación',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Define el widget de inicio de tu aplicación
      home: const LoginScreen(),
      // Define las rutas de tu aplicación
      routes: getRoutes(),
    );
  }
}


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://img.freepik.com/free-vector/gradient-hexagonal-background_23-2148954968.jpg?w=2000'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Usuario',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Contraseña',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
  print('Email: ${emailController.text}, Password: ${passwordController.text}');

  if (emailController.text == 'admin123@unitec.edu' && passwordController.text == 'admin123') {
    print('Login successful');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Ha iniciado sesión'),
        duration: Duration(seconds: 3),
      ),
    );
    Navigator.pushReplacementNamed(context, '/home'); // Navigate to the HomePages
  } else {
    print('Login failed');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Intente de nuevo'),
        duration: Duration(seconds: 3),
      ),
    );
  }
},

              child: Text('Ingresar'),
            ),
          ],
        ),
      ),
    );
  }
}
