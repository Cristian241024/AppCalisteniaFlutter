import 'package:flutter/material.dart';
import 'package:app_calistenia_movil/screens/workout_screen.dart';
 // Importación de la pantalla de Dominadas

class ExerciseCategoriesScreen extends StatelessWidget {
  final String difficulty;

  ExerciseCategoriesScreen({required this.difficulty});

  @override
  Widget build(BuildContext context) {
    // Ejercicios según la dificultad
    final Map<String, List<Map<String, dynamic>>> exerciseData = {
      "Principiante": [
        {
          "name": "Fondo",
          "description": "Ejercicio básico para el tren superior.",
          "icon": Icons.accessibility_new,
          "onTap": () {},
        },
        {
          "name": "Flexiones",
          "description": "Fortalece pecho y brazos.",
          "icon": Icons.push_pin,
          "onTap": () {},
        },
        {
          "name": "Dominadas",
          "description": "Ideal para trabajar la espalda.",
          "icon": Icons.fitness_center,
          "onTap": () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WorkoutScreen(), // Redirección a WorkoutScreen
              ),
            );
          },
        },
        {
          "name": "Pierna",
          "description": "Entrena fuerza en las piernas.",
          "icon": Icons.directions_walk,
          "onTap": () {},
        },
      ],
      // Añadir ejercicios para Intermedio y Avanzado...
    };

    // Obtener la lista de ejercicios según la dificultad
    final exercises = exerciseData[difficulty] ?? [];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Ejercicios para $difficulty"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.lightBlue.shade400, // Fondo celeste sólido
        child: ListView.builder(
          padding: EdgeInsets.all(16),
          itemCount: exercises.length,
          itemBuilder: (context, index) {
            final exercise = exercises[index];
            return ExerciseCard(
              name: exercise['name'],
              description: exercise['description'],
              icon: exercise['icon'],
              onTap: exercise['onTap'], // Pasar la acción de cada botón
            );
          },
        ),
      ),
    );
  }
}

class ExerciseCard extends StatelessWidget {
  final String name;
  final String description;
  final IconData icon;
  final VoidCallback onTap;

  ExerciseCard({
    required this.name,
    required this.description,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 8,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        contentPadding: EdgeInsets.all(16),
        leading: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.blue.shade100, // Fondo del ícono
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: Colors.blue.shade800,
            size: 30,
          ),
        ),
        title: Text(
          name,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue.shade800,
          ),
        ),
        subtitle: Text(
          description,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey.shade700,
          ),
        ),
        onTap: onTap, // Acción al hacer clic en el botón
      ),
    );
  }
}
