// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imc/components/painel/conteudo.dart';
import 'package:imc/components/painel/painel.dart';
import 'package:imc/shared/theme/app_colors.dart';

const heigthtContainerFotter = 80.0;

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
              child: Row(
                children: [
                  Expanded(
                    child: Painel(
                      card: Conteudo(
                        icon: FontAwesomeIcons.mars,
                        description: 'Masculino',
                      ),
                      color: AppColors.activeCard,
                    ),
                  ),
                  Expanded(
                    child: Painel(
                      card: Conteudo(
                        icon: FontAwesomeIcons.venus,
                        description: 'Feminino',
                      ),
                      color: AppColors.activeCard,
                    ),
                  )
                ]
              ),
            ),
            Expanded(
              child: Painel(
                color: AppColors.activeCard,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Painel(
                      color: AppColors.activeCard,
                    ),
                  ),
                  Expanded(
                    child: Painel(
                      color: AppColors.activeCard,
                    ),
                  ),
                ]
              ),
            ),
            Container(
              color: AppColors.containerFotter,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: heigthtContainerFotter,
            )
          ],
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
