import 'package:app_calistenia_movil/widgets/exerciseDetail.dart';
import 'package:app_calistenia_movil/widgets/listcardworkout.dart';
import 'package:flutter/material.dart';

class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            'Dominadas',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.indigo[900],
      ),
      body: const ListCardWorkout(),
    );
  }
}
