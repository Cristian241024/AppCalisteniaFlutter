import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key, required this.buttonStyle, required this.textStyle});

  final ButtonStyle buttonStyle;
  final TextStyle textStyle;

  @override
  State<Favorite> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<Favorite> {
  bool _stateLike = false; // Estado que mantiene el valor del "me gusta"

  @override
  Widget build(BuildContext context) {

    return TextButton(
      onPressed: () {
        setState(() {
          _stateLike = !_stateLike; // Cambiar el estado de _stateLike
        });
      },
      style: widget.buttonStyle,
      child: Row(
        mainAxisSize: MainAxisSize.min, // Ajusta el tamaño de la fila según el contenido
        mainAxisAlignment: MainAxisAlignment.center, // Centra el contenido
        children: [
          // Imagen (icono), cambiada según el estado
          Image.asset(
            _stateLike ? 'assets/favorito2.png' : 'assets/favorito1.png',
            width: 24,
            height: 24,
          ),
          SizedBox(width: 8), // Espacio entre el icono y el texto
          // Texto a la derecha del icono
          Text(_stateLike ? "quitar" : 'añadir', style: widget.textStyle),
        ],
      ),
    );
  }
}
