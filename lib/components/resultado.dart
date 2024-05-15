import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String resultadoText;
  final TextStyle resultadoStyle;
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  const Resultado(
      {super.key,
      this.resultadoText = 'Parabéns!',
      this.resultadoStyle = const TextStyle(
          fontSize: 28, fontWeight: FontWeight.w700, color: Colors.green),
      required this.pontuacao,
      required this.quandoReiniciarQuestionario});

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            fraseResultado,
            style: resultadoStyle,
          ),
        ),
        TextButton(
          onPressed: quandoReiniciarQuestionario,
          style: TextButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
          child: const Text(
            'Reiniciar?',
            style: TextStyle(color: Colors.white, fontSize: 18)
          ),
        )
      ],
    );
  }
}
