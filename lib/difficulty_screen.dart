import 'package:flutter/material.dart';
import 'exercise_categories_screen.dart';

class DifficultyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Selecciona tu nivel de dificultad"),
      ),
      body: Center( // Centra el contenido en la pantalla
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centra los botones verticalmente
          crossAxisAlignment: CrossAxisAlignment.center, // Centra los botones horizontalmente
          children: [
            DifficultyButton(
              difficulty: "Principiante",
              color: Colors.green,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExerciseCategoriesScreen(difficulty: "Principiante"),
                  ),
                );
              },
            ),
            DifficultyButton(
              difficulty: "Intermedio",
              color: Colors.orange,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExerciseCategoriesScreen(difficulty: "Intermedio"),
                  ),
                );
              },
            ),
            DifficultyButton(
              difficulty: "Avanzado",
              color: Colors.red,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExerciseCategoriesScreen(difficulty: "Avanzado"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DifficultyButton extends StatelessWidget {
  final String difficulty;
  final Color color;
  final VoidCallback onPressed;

  DifficultyButton({
    required this.difficulty,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        ),
        child: Text(
          difficulty,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
