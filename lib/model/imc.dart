import 'dart:math';

import 'package:imc/shared/utils/sexo.dart';

class Imc {
  Imc(
      {required this.altura,
      required this.idade,
      required this.peso,
      required this.sexo});

  final int altura;
  final int idade;
  final int peso;
  final Sexo sexo;

  double imc() => peso / pow(altura / 100, 2);

  void adolescente() {}
  void adulto() {
    if (imc() < 18.5) {
      print('baixo peso');
    }
    if(imc() >= 18.5 && imc() < 25){
      print('peso adequado');
    }
    if(imc() >= 25 && imc() < 30){
      print('peso adequado');
    }
  }

  void idoso() {}
}
