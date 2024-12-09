import 'package:flutter/material.dart';
import 'dart:async';

class TimerScreen extends StatefulWidget {
  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  int _remainingSeconds = 60; // Tiempo inicial del temporizador en segundos
  Timer? _timer; // Controlador del temporizador

  // Inicia el temporizador
  void _startTimer() {
    if (_timer != null && _timer!.isActive) return;

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingSeconds > 0) {
          _remainingSeconds--;
        } else {
          _timer?.cancel();
          _showTimeOverMessage();
        }
      });
    });
  }

  // Pausa el temporizador
  void _pauseTimer() {
    _timer?.cancel();
  }

  // Reinicia el temporizador
  void _resetTimer() {
    _timer?.cancel();
    setState(() {
      _remainingSeconds = 60; // Restablece el tiempo inicial
    });
  }

  // Muestra un mensaje cuando el tiempo se acaba
  void _showTimeOverMessage() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("¡Tiempo terminado!"),
        content: Text("El temporizador ha llegado a su fin."),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("OK"),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancela el temporizador al cerrar la pantalla
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Temporizador"),
        backgroundColor: Colors.indigo[900],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Tiempo restante:",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "$_remainingSeconds s",
            style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: _startTimer,
                child: Text("Iniciar"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
              ),
              ElevatedButton(
                onPressed: _pauseTimer,
                child: Text("Pausar"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
              ),
              ElevatedButton(
                onPressed: _resetTimer,
                child: Text("Reiniciar"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
