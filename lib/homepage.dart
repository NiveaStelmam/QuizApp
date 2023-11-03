import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF4A0975), // cor do fundo do app
        appBar: AppBar(
          backgroundColor:
              Color.fromARGB(255, 231, 151, 31), // cor da barra de navegação
          title: Center(child: Text('Quiz - Legislação e Ética em TI')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/quiz.png'),
              ElevatedButton(
                onPressed: () {},
                child: Text('Jogar', style: TextStyle(fontSize: 40)),
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Color.fromARGB(255, 231, 151, 31), // cor do botão
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
