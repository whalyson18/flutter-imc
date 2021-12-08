// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imc/components/painel/conteudo.dart';
import 'package:imc/components/painel/painel.dart';
import 'package:imc/sexo.dart';
import 'package:imc/shared/constantes/app_const.dart';
import 'package:imc/shared/theme/app_colors.dart';

class Tela extends StatefulWidget {
  Tela({Key? key}) : super(key: key);

  @override
  _TelaState createState() => _TelaState();
}

class _TelaState extends State<Tela> {
  Sexo? sexo;
  int initialValueSlider = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculadora IMC"),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(children: [
                Expanded(
                  child: Painel(
                    onPress: () {
                      setState(() {
                        sexo = Sexo.masculino;
                      });
                    },
                    card: Conteudo(
                      icon: FontAwesomeIcons.mars,
                      description: 'Masculino',
                    ),
                    color: sexo == Sexo.masculino
                        ? AppColors.activeCard
                        : AppColors.inactiveCard,
                  ),
                ),
                Expanded(
                  child: Painel(
                    onPress: () {
                      setState(() {
                        sexo = Sexo.feminino;
                      });
                    },
                    card: Conteudo(
                      icon: FontAwesomeIcons.venus,
                      description: 'Feminino',
                    ),
                    color: sexo == Sexo.feminino
                        ? AppColors.activeCard
                        : AppColors.inactiveCard,
                  ),
                )
              ]),
            ),
            Expanded(
              child: Painel(
                card: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'ALTURA',
                      style: AppConst.textStyleConteudoPainel,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          initialValueSlider.toString(),
                          style: AppConst.numeroTextStyle,
                        ),
                        Text(
                          'cm',
                          style: AppConst.textStyleConteudoPainel,
                        )
                      ],
                    ),
                    Slider(
                      activeColor: AppColors.containerFotter,
                      inactiveColor: AppColors.inactiveCard,
                      value: initialValueSlider.toDouble(),
                      min: 120,
                      max: 220,
                      onChanged: (double value) {
                        setState(() {
                          initialValueSlider = value.round();
                        });
                      },
                    )
                  ],
                ),
                color: AppColors.activeCard,
              ),
            ),
            Expanded(
              child: Row(children: [
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
              ]),
            ),
            Container(
              color: AppColors.containerFotter,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: AppConst.heigthtContainerFotter,
            )
          ],
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
