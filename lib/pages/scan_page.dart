import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

//void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Escáner de QR',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scan(),
    );
  }
}

class Scan extends StatelessWidget {
  const Scan({super.key});

  @override
  Widget build(BuildContext context) {
    return const QRScanScreen();
  }
}

class QRScanScreen extends StatelessWidget {
  const QRScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Escáner de QR'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => scanQR(context),
          child: const Text('Escanear código QR'),
        ),
      ),
    );
  }

  Future<void> scanQR(BuildContext context) async {
    String result = await FlutterBarcodeScanner.scanBarcode(
      '#ff6666', // color de fondo
      'Cancelar', // texto del botón de cancelar
      false, // flash
      ScanMode.QR, // tipo de código para escanear
    );

    //if (!mounted) return; // Evita llamadas setState si el widget ya no está en el árbol

    if (result != '-1') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => QRResultScreen(result),
        ),
      );
    }
  }
}

class QRResultScreen extends StatelessWidget {
  final String scanData;

  const QRResultScreen(this.scanData, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultado del escaneo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Contenido del código QR:'),
            const SizedBox(height: 10),
            Text(
              scanData,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
