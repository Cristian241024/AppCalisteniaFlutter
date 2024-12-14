import 'package:flutter/material.dart';
import 'user_profile_screen.dart';
import '../exercise_categories_screen.dart';

class DifficultyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        elevation: 0,
        title: Text(
          "Selecciona tu nivel de dificultad",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                color: Colors.blue.shade400,
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UserProfileScreen()),
              );
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.blue.shade100,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DifficultyButton(
                difficulty: "Principiante",
                description: "Ideal para comenzar a entrenar.",
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
              DifficultyButton(
                difficulty: "Intermedio",
                description: "Desafíos moderados para avanzar.",
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
              DifficultyButton(
                difficulty: "Avanzado",
                description: "Retos intensos para expertos.",
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

class DifficultyButton extends StatelessWidget {
  final String difficulty;
  final String description;
  final VoidCallback onPressed;

  DifficultyButton({
    required this.difficulty,
    required this.description,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue.shade300,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              difficulty,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 5),
            Text(
              description,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
