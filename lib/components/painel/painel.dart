import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Painel extends StatelessWidget {
  Painel({@required this.color, this.card});

  final Color? color;
  final Widget? card;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: card,
      margin: EdgeInsets.all(20),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
    );
  }
}
