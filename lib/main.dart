import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calistenia App',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Color principal simple
      ),
      home: HomeScreen(), // Pantalla principal
    );
  }
}
