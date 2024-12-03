import 'package:flutter/material.dart';

class ExerciseCategoriesScreen extends StatelessWidget {
  final String difficulty;

  ExerciseCategoriesScreen({required this.difficulty});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categorías: $difficulty"),
      ),
      body: ListView(
        children: [
          CategoryButton(
            category: "Fuerza",
            color: Colors.blue, // Color de fondo para la categoría
            onPressed: () {
              // Lógica para la categoría Fuerza
            },
          ),
          CategoryButton(
            category: "Flexibilidad",
            color: Colors.green, // Color de fondo para la categoría
            onPressed: () {
              // Lógica para la categoría Flexibilidad
            },
          ),
          CategoryButton(
            category: "Equilibrio y Coordinación",
            color: Colors.orange, // Color de fondo para la categoría
            onPressed: () {
              // Lógica para la categoría Equilibrio
            },
          ),
          CategoryButton(
            category: "Cardio",
            color: Colors.red, // Color de fondo para la categoría
            onPressed: () {
              // Lógica para la categoría Cardio
            },
          ),
        ],
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String category;
  final Color color;
  final VoidCallback onPressed;

  CategoryButton({required this.category, required this.color, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color, // Aplicamos el color de fondo
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        ),
        child: Text(
          category,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
