import 'package:flutter/material.dart';
import 'exercise_data.dart'; // Importa la base de datos de ejercicios
import 'exercise_model.dart'; // Importa el modelo de datos

class ExerciseListScreen extends StatefulWidget {
  final String category;

  // Constructor para recibir la categoría de ejercicios
  ExerciseListScreen({required this.category});

  @override
  _ExerciseListScreenState createState() => _ExerciseListScreenState();
}

class _ExerciseListScreenState extends State<ExerciseListScreen> {
  late List<Exercise> filteredExercises;

  @override
  void initState() {
    super.initState();

    // Filtrar los ejercicios según la categoría pasada al constructor
    filteredExercises = exercises.where((exercise) => exercise.category == widget.category).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejercicios de ${widget.category}'),
      ),
      body: ListView.builder(
        itemCount: filteredExercises.length,
        itemBuilder: (context, index) {
          final exercise = filteredExercises[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(exercise.name),
              subtitle: Text(exercise.description),
              onTap: () {
                // Acción al seleccionar un ejercicio (puedes expandir esto según sea necesario)
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(exercise.name),
                    content: Text('Músculos trabajados: ${exercise.muscles.join(', ')}'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('Cerrar'),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
