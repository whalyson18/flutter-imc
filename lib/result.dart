// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:imc/components/button/fotter_button.dart';
import 'package:imc/components/painel/painel.dart';
import 'package:imc/shared/constantes/app_const.dart';
import 'package:imc/shared/theme/app_colors.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora IMC"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Seu Resultado',
                style: AppConst.titleStyleResultPage,
                textAlign: TextAlign.start,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Painel(
              color: AppColors.activeCard,
              card: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'NORMAL',
                    style: AppConst.textStyleResult,
                  ),
                  Text(
                    '18.4',
                    style: AppConst.textStyleIMC,
                  ),
                  Text(
                    'O seu IMC esta baixo. Você precisa comer mais!',
                    textAlign: TextAlign.center,
                    style: AppConst.textStyleIMCMessage,
                  )
                ],
              ),
            ),
          ),
          FotterButton(
            title: 'RECALCULAR',
            onPress: () => Navigator.pop(context)
          )
        ],
      ),
    );
  }
}