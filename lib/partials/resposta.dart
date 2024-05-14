import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String text;
  final void Function() whenSelected;
  final Color backgroundColor;
  final Color textColor;

  const Resposta(
      {super.key,
      required this.text,
      required this.whenSelected,
      required this.backgroundColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: whenSelected,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(backgroundColor),
              foregroundColor: MaterialStateProperty.all(textColor)),
          child: Text(text),
        ));
  }
}
