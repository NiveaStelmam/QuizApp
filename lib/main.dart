import 'package:flutter/material.dart';
import 'homepage.dart';
import 'quiz.dart';
import 'resultados.dart';

void main() {
  //runApp(Resultado(acertos: 3));
  //runApp(Quiz());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: 'Homepage', routes: {
      '/': (context) => Homepage(),
      'Quiz': (context) => Quiz(),
      Resultado.routeName: (context) => Resultado(),
    });
  }
}
