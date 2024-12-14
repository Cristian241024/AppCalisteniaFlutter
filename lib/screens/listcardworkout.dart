import 'package:flutter/material.dart';

class ListCardWorkout extends StatelessWidget {
  const ListCardWorkout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 4, // Número de ejercicios para "Dominadas"
      itemBuilder: (context, index) {
        return Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 4,
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: ListTile(
            leading: Icon(Icons.fitness_center, color: Colors.indigo[900]),
            title: Text("Ejercicio ${index + 1}", style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text("Descripción del ejercicio ${index + 1}"),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
            onTap: () {
              // Navegar a detalles del ejercicio si es necesario
            },
          ),
        );
      },
    );
  }
}

