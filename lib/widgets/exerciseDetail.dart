import 'package:flutter/material.dart';

class ExerciseDetailScreen extends StatelessWidget {
  const ExerciseDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Dos columnas
            crossAxisSpacing: 10, // Espacio horizontal entre los elementos
            mainAxisSpacing: 10, // Espacio vertical entre los elementos
            childAspectRatio: 4, // Relación de aspecto base (más alta que ancha)
          ),
          itemCount: 10, // Número total de elementos
          itemBuilder: (context, index) {
            switch (index) {
              case 0:
                return buildSectionTitle('DIFICULTAD:');
              case 1:
                return buildSectionContent('💪💪💪');
              case 2:
                return buildSectionTitle('MÚSCULOS IMPLICADOS:');
              case 3:
                return buildSectionContent('Dorsal, pectoral y tríceps.');
              case 4:
                return buildSectionTitle('PROGRESIONES PARA CONSEGUIRLO:');
              case 5:
                return buildSectionContent('Dominadas pronas, fondos en barra.');
              case 6:
                return buildSectionTitle('SIRVE DE PROGRESIÓN PARA:');
              case 7:
                return buildSectionContent('Muscle up asistido con pierna, muscle up.');
              case 8:
                return buildSectionTitle('DESCRIPCIÓN:');
              case 9:
                return buildSectionContentLong('En una barra a altura media baja, ayúdate de un salto para subir y quedarte en posición de fondos de barra.');
              default:
                return Container();
            }
          },
        ),
      ),
    );
  }

  // Método para construir los títulos de las secciones
  Widget buildSectionTitle(String title) {
    return Container(
      padding: EdgeInsets.all(8),
      color: Colors.blue.shade100,
      child: Text(
        title,
        style: TextStyle(fontSize: 10,
          fontWeight: FontWeight.bold,
        color: Colors.indigo[900]),
      ),
    );
  }

  // Método para construir el contenido de cada sección (solo una fila de texto)
  Widget buildSectionContent(String content) {
    return Container(
      padding: EdgeInsets.all(8),
      color: Colors.blue.shade50,
      child: Text(
        content,
        style: TextStyle(fontSize: 10),
      ),
    );
  }

  // Método especial para la "DESCRIPCIÓN", que será más alta
  Widget buildSectionContentLong(String content) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 2),
      color: Colors.blue.shade50,
      child: AspectRatio(
        aspectRatio: 10, // Aumentamos la relación de aspecto solo para la descripción
        child: Center(
          child: Text(
            content,
            style: TextStyle(fontSize: 10),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}
