import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Fondo de la pantalla
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondo.jpg'), // Imagen de fondo
            fit: BoxFit.cover, // Asegura que la imagen cubra toda la pantalla
          ),
        ),
        child: Center(
          // Coloca los botones en el centro
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Botón de "Nuevo Entrenamiento"
              ElevatedButton(
                onPressed: () {
                  // Acción para el botón (por ahora vacío)
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Fondo azul
                  foregroundColor: Colors.white, // Texto blanco
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Bordes redondeados
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20), // Tamaño del botón
                ),
                child: Text("Nuevo Entrenamiento"),
              ),
              SizedBox(height: 20), // Espacio entre los botones
              // Botón de "Registro/Inicio de sesión"
              ElevatedButton(
                onPressed: () {
                  // Acción para el botón (por ahora vacío)
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Fondo verde
                  foregroundColor: Colors.white, // Texto blanco
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Bordes redondeados
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20), // Tamaño del botón
                ),
                child: Text("Registro/Iniciar Sesión"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
