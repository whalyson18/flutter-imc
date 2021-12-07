// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:imc/components/card.dart';

class Tela extends StatefulWidget {
  Tela({Key? key}) : super(key: key);

  @override
  _TelaState createState() => _TelaState();
}

class _TelaState extends State<Tela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculadora IMC"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(children: [
                Expanded(
                    child: Painel(
                  color: Color(0xFF9E9E9E),
                )),
                Expanded(
                    child: Painel(
                  color: Color(0xFF9E9E9E),
                ))
              ]),
            ),
            Expanded(
                child: Painel(
              color: Color(0xFF9E9E9E),
            )),
            Expanded(
              child: Row(children: [
                Expanded(
                    child: Painel(
                  color: Color(0xFF9E9E9E),
                )),
                Expanded(
                    child: Painel(
                  color: Color(0xFF9E9E9E),
                ))
              ]),
            ),
          ],
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
