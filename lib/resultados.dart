import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int acertos;

  const Resultado({Key? key, this.acertos = 3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:
            Colors.white, // cor do fundo do app - Color(0xFF4A0975)
        appBar: AppBar(
          backgroundColor:
              Color.fromARGB(255, 231, 151, 31), // cor da barra de navegação
          title: Center(child: Text('Quiz - Legislação e Ética em TI')),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Resultado", style: TextStyle(fontSize: 20)),
                Center(
                  child: Text("Você acertou\n$acertos de 10\nperguntas ",
                      style: TextStyle(fontSize: 20)),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child:
                        Text('Jogar Novamente', style: TextStyle(fontSize: 30)),
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Color.fromARGB(255, 231, 151, 31), // cor do botão
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 20)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
