import 'package:flutter/material.dart';
import 'difficulty_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondo.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DifficultyScreen()),
                  );
                },
                child: Text("Nuevo Entrenamiento"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Acción para el botón de inicio de sesión
                },
                child: Text("Registro/Iniciar Sesión"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
