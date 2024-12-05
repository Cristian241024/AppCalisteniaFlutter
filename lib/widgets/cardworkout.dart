import 'package:app_calistenia_movil/widgets/buttonsworkout.dart';
import 'package:app_calistenia_movil/widgets/exerciseDetail.dart';
import 'package:app_calistenia_movil/widgets/imageworkout.dart';
import 'package:app_calistenia_movil/widgets/titleworkout.dart';
import 'package:flutter/material.dart';

class CardWorkout extends StatelessWidget {
  const CardWorkout({super.key, required this.card});

  final Map<String, dynamic> card;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 900,
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /** Título del ejercicio
              Container(
              padding: const EdgeInsets.all(10),
              child: TitleWorkout(name: card["name"]!),
              ),**/
          // Imagen del ejercicio
          ImageWorkout(imageUrls: card["images"],),
          // Botones de acción
          Container(
            child: const ButtonsWorkout(),
          ),
          // Detalles del ejercicio, ajustado a no sobrepasar el tamaño de la pantalla
          Container(
            height: MediaQuery.of(context).size.height * 0.45, // Ajusta la altura del detalle
            child: ExerciseDetailScreen(),
          ),
        ],
      ),
    );
  }
}