import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String resultadoText;
  final TextStyle resultadoStyle;

  const Resultado({super.key, this.resultadoText = 'Parabéns!', this.resultadoStyle = const TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: Colors.green)});

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
