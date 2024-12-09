import 'package:app_calistenia_movil/screens/home_screen.dart';
//import 'package:app_calistenia_movil/screens/workout_screen.dart';//importar solo para parte de cali

import 'package:flutter/material.dart';

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
     //home: WorkoutScreen(),//cambios de cali en workout_screen
    );
  }
}
