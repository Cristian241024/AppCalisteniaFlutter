import 'package:app_calistenia_movil/widgets/favorite.dart';
import 'package:flutter/material.dart';

class ButtonsWorkout extends StatelessWidget {
  const ButtonsWorkout({super.key});

  @override
  Widget build(BuildContext context) {
      const textStyle = TextStyle(
        color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold);

    ButtonStyle buttonStyle = TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // Bordes redondeados
      ),
      backgroundColor: Colors.indigo[900],
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround, // Espacio horizontal entre los botones
      children: [
        // Botón con imagen y texto
        TextButton.icon(
          onPressed: () {},
          style: buttonStyle,
          icon: Image.asset(
            'assets/gafas-vr.png',  // Ruta de tu imagen
            width: 24,  // Puedes ajustar el tamaño de la imagen
            height: 24, // Puedes ajustar el tamaño de la imagen
          ),
          label: const Text("tutorial", style: textStyle),   // El texto del botón
        ),
        // Otro botón con imagen y texto
        TextButton.icon(
          onPressed: () {},
          style: buttonStyle,
          icon: Image.asset(
            'assets/siguiente-pista1.png',  // Ruta de tu imagen
            width: 24,  // Ajusta el tamaño de la imagen
            height: 24, // Ajusta el tamaño de la imagen
          ),
          label: const Text("iniciar", style: textStyle),   // El texto del botón
        ),
        // Si tienes un botón con "favoritos", por ejemplo
        Favorite(buttonStyle: buttonStyle, textStyle: textStyle),
      ],
    );
  }
}

