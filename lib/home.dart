// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imc/components/button/action_button.dart';
import 'package:imc/components/button/fotter_button.dart';
import 'package:imc/components/painel/conteudo.dart';
import 'package:imc/components/painel/painel.dart';
import 'package:imc/model/imc.dart';
import 'package:imc/result.dart';
import 'package:imc/shared/utils/sexo.dart';
import 'package:imc/shared/constantes/app_const.dart';
import 'package:imc/shared/theme/app_colors.dart';

class Tela extends StatefulWidget {
  Tela({Key? key}) : super(key: key);

  @override
  _TelaState createState() => _TelaState();
}

class _TelaState extends State<Tela> {
  Sexo sexo = Sexo.masculino;
  int initialValueSlider = 180;
  int initialPeso = 60;
  int initialIdade = 30;

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
                      print(sexo);
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
                      print(sexo);
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
                          style: AppConst.numberStyleConteudoPainel,
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
                    card: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'PESO',
                          style: AppConst.textStyleConteudoPainel,
                        ),
                        Text(
                          initialPeso.toString(),
                          style: AppConst.numberStyleConteudoPainel,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ActionButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  initialPeso--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            ActionButton(
                              icon: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  initialPeso++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Painel(
                    color: AppColors.activeCard,
                    card: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'IDADE',
                          style: AppConst.textStyleConteudoPainel,
                        ),
                        Text(
                          initialIdade.toString(),
                          style: AppConst.numberStyleConteudoPainel,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ActionButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: () {
                                if (initialIdade <= 10) {
                                  showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) =>
                                        AlertDialog(
                                      title: const Text('Alerta'),
                                      content: Text(
                                          'Idade não pode ser menor que 10.'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          child: const Text('Ok'),
                                        ),
                                      ],
                                    ),
                                  );
                                } else {
                                  setState(() {
                                    initialIdade--;
                                  });
                                }
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            ActionButton(
                              icon: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  initialIdade++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ]),
            ),
            FotterButton(
              title: 'CALCULAR',
              onPress: () {
                Imc imc = Imc(
                    idade: initialIdade,
                    sexo: sexo,
                    altura: initialValueSlider,
                    peso: initialPeso);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Result(
                      imc: imc.imc(),
                      resultado: imc.resultado(),
                      observacao: imc.observacao(),
                    ),
                  ),
                );
              },
            )
          ],
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
