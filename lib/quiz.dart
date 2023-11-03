import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    List quiz = [
      {
        "pergunta":
            "Nome da pessoa designada pela empresa para garantir a conformidade com a LGPD e atuar como ponto de contato para titulares dos dados:",
        "respostas": [
          "Controlador",
          "Titular",
          "Encarregado",
          "Mediador",
        ],
        "alternativa_correta": 3,
      }
    ];
    quiz.add({
      "pergunta":
          "Em que ano a Lei Geral de Proteção de Dados entrou em vigor no 	Brasil?",
      "respostas": [
        "2018",
        "2020",
        "2021",
        "2022",
      ],
      "alternativa_correta": 2,
    });
    print("Dados do Quiz");
    print(quiz);

    int perguntaNumero = 2;

    return MaterialApp(
      home: Scaffold(
        backgroundColor:
            Colors.white, // cor do fundo do app - Color(0xFF4A0975)
        appBar: AppBar(
          backgroundColor:
              Color.fromARGB(255, 231, 151, 31), // cor da barra de navegação -
          title: Center(child: Text('Quiz - Legislação e Ética em TI')),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: Text("Pergunta $perguntaNumero de 10")),
              Text("" + quiz[perguntaNumero - 1]['pergunta'],
                  style: TextStyle(fontSize: 20)),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print("Pressionando o botão 1");
                  },
                  child: Text(quiz[perguntaNumero - 1]['respostas'][0],
                      style: TextStyle(fontSize: 20)),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(
                          255, 231, 151, 31), // cor do botão
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20)),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print("Pressionando o botão 2");
                  },
                  child: Text(quiz[perguntaNumero - 1]['respostas'][1],
                      style: TextStyle(fontSize: 20)),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(
                          255, 231, 151, 31), // cor do botão
                      padding: const EdgeInsets.fromLTRB(100, 20, 100, 20)),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print("Pressionando o botão 3");
                  },
                  child: Text(quiz[perguntaNumero - 1]['respostas'][2],
                      style: TextStyle(fontSize: 20)),
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Color.fromARGB(255, 231, 151, 31), // cor do botão
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20)),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print("Pressionando o botão 4");
                  },
                  child: Text(quiz[perguntaNumero - 1]['respostas'][2],
                      style: TextStyle(fontSize: 20)),
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Color.fromARGB(255, 231, 151, 31), // cor do botão
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
