


import 'package:flutter/material.dart';

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
      decoration: const BoxDecoration(
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
            const SizedBox(height: 20),
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
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
  print('Email: ${emailController.text}, Password: ${passwordController.text}');

  if (emailController.text == 'admin123@unitec.edu' && passwordController.text == 'admin123') {
    print('Login successful');
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Ha iniciado sesión'),
        duration: Duration(seconds: 3),
      ),
    );
    Navigator.pushReplacementNamed(context, '/home'); // Navigate to the HomePages
  } else {
    print('Login failed');
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Intente de nuevo'),
        duration: Duration(seconds: 3),
      ),
    );
  }
},

              child: const Text('Ingresar'),
            ),
          ],
        ),
      ),
    );
  }
}
