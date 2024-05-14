import 'package:flutter/material.dart';
import '../partials/questao.dart';
import '../partials/resposta.dart';
import '../utils/utils.dart';

class Questionario extends StatelessWidget {
  final int perguntaSelecionada;
  final List<Map<String, Object>> perguntas;
  final void Function(int) responder;

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
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
            as List<Map<String, Object>>
        : [];
    return Column(
      children: <Widget>[
        Questao(texto: perguntas[perguntaSelecionada]['texto'] as String),
        ...respostas.map((resp) => Resposta(
            text: resp['texto'] as String,
            whenSelected: () => responder(resp['pontuacao'] as int),
            backgroundColor: Colors.green.shade600,
            textColor: Colors.white70)),
      ],
    );
  }
}
