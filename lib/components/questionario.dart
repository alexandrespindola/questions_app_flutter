import 'package:flutter/material.dart';
import '../partials/questao.dart';
import '../partials/resposta.dart';
import '../utils/utils.dart';

class Questionario extends StatelessWidget {
  final int perguntaSelecionada;
  final List<Map<String, Object>> perguntas;
  final void Function() responder;

  const Questionario({
    super.key,
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.responder,
  });

  bool get temPerguntaSelecionada {
    return Utils.temPerguntaSelecionada(perguntaSelecionada, perguntas);
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas'] as List<String>
        : [];
    return Column(
      children: <Widget>[
        Questao(texto: perguntas[perguntaSelecionada]['texto'] as String),
        ...respostas.map((t) => Resposta(
            text: t,
            whenSelected: responder,
            backgroundColor: Colors.green.shade600,
            textColor: Colors.white70)),
      ],
    );
  }
}
