import 'package:flutter/material.dart';
import 'package:app_calistenia_movil/screens/timer_screen.dart';

import 'favorite.dart';

class ButtonsWorkout extends StatelessWidget {
  const ButtonsWorkout({super.key});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold);

    ButtonStyle buttonStyle = TextButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      backgroundColor: Colors.indigo[900],
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton.icon(
          onPressed: () {},
          style: buttonStyle,
          icon: Image.asset(
            'assets/gafas-vr.png',
            width: 24,
            height: 24,
          ),
          label: const Text("tutorial", style: textStyle),
        ),
        TextButton.icon(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TimerScreen()),
            );
          },
          style: buttonStyle,
          icon: Image.asset(
            'assets/siguiente-pista1.png',
            width: 24,
            height: 24,
          ),
          label: const Text("iniciar", style: textStyle),
        ),
        Favorite(buttonStyle: buttonStyle, textStyle: textStyle),
      ],
    );
  }
}
