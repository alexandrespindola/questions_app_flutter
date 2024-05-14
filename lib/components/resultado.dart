import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String resultadoText;
  final TextStyle resultadoStyle;
  final int pontuacao;

  const Resultado(
      {super.key,
      this.resultadoText = 'Parabéns!',
      this.resultadoStyle = const TextStyle(
          fontSize: 28, fontWeight: FontWeight.w700, color: Colors.green),
      required this.pontuacao});

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
    return Center(
      child: Text(
        resultadoText,
        style: resultadoStyle,
      ),
    );
  }
}
