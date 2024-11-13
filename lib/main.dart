import 'package:flutter/material.dart';
import 'home_screen.dart'; // Asegúrate de importar tu pantalla

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calistenia App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(), // Aquí se establece tu pantalla principal
    );
  }
}
