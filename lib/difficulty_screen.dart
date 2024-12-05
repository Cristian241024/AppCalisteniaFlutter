import 'package:flutter/material.dart';
import 'exercise_categories_screen.dart';

class DifficultyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Selecciona tu nivel de dificultad",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.lightBlue.shade400, // Fondo celeste sólido
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DifficultyCard(
                difficulty: "Principiante",
                description: "Ideal para comenzar a entrenar.",
                icon: Icons.accessibility_new, // Ícono de principiante
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ExerciseCategoriesScreen(difficulty: "Principiante"),
                    ),
                  );
                },
              ),
              DifficultyCard(
                difficulty: "Intermedio",
                description: "Desafíos moderados para avanzar.",
                icon: Icons.directions_run, // Ícono de intermedio
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ExerciseCategoriesScreen(difficulty: "Intermedio"),
                    ),
                  );
                },
              ),
              DifficultyCard(
                difficulty: "Avanzado",
                description: "Retos intensos para expertos.",
                icon: Icons.fitness_center, // Ícono de avanzado
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ExerciseCategoriesScreen(difficulty: "Avanzado"),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DifficultyCard extends StatelessWidget {
  final String difficulty;
  final String description;
  final IconData icon;
  final VoidCallback onPressed;

  DifficultyCard({
    required this.difficulty,
    required this.description,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: GestureDetector(
        onTap: onPressed,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 8,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
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
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      difficulty,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade800,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
