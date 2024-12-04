import 'package:flutter/material.dart';

class TitleWorkout extends StatelessWidget {
  const TitleWorkout({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          name,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Color.fromARGB(255, 35, 35, 35)),
        ),
      ],
    );
  }
}
