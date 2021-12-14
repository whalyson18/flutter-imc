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

  String resultado() {
    String result = "";
    if (idade >= 10 && idade <= 19) {
      result = adolescente();
    }
    if (idade >= 20 && idade <= 59) {
      result = adulto();
    }
    if (idade >= 60) {
      result = idoso();
    }
    return result;
  }

  String adolescente() {
    String result = "";
    if (sexo == Sexo.masculino) {
      switch (idade) {
        case 10:
          if (imc() <= 14.41) {
            result = 'baixo peso';
          } else if (imc() >= 14.42 && imc() <= 19.5) {
            result = 'peso adequado';
          } else {
            result = 'sobrepeso';
          }
          break;
        case 11:
          if (imc() <= 14.82) {
            result = 'baixo peso';
          } else if (imc() >= 14.83 && imc() <= 20.34) {
            result = 'peso adequado';
          } else {
            result = 'sobrepeso';
          }
          break;
        case 12:
          if (imc() <= 15.23) {
            result = 'baixo peso';
          } else if (imc() >= 15.24 && imc() <= 21.11) {
            result = 'peso adequado';
          } else {
            result = 'sobrepeso';
          }
          break;
        case 13:
          if (imc() <= 15.72) {
            result = 'baixo peso';
          } else if (imc() >= 15.73 && imc() <= 21.92) {
            result = 'peso adequado';
          } else {
            result = 'sobrepeso';
          }
          break;
        case 14:
          if (imc() <= 16.17) {
            result = 'baixo peso';
          } else if (imc() >= 16.18 && imc() <= 22.76) {
            result = 'peso adequado';
          } else {
            result = 'sobrepeso';
          }
          break;
        case 15:
          if (imc() <= 16.58) {
            result = 'baixo peso';
          } else if (imc() >= 16.59 && imc() <= 23.62) {
            result = 'peso adequado';
          } else {
            result = 'sobrepeso';
          }
          break;
        case 16:
          if (imc() <= 17) {
            result = 'baixo peso';
          } else if (imc() >= 17.01 && imc() <= 24.44) {
            result = 'peso adequado';
          } else {
            result = 'sobrepeso';
          }
          break;
        case 17:
          if (imc() <= 17.3) {
            result = 'baixo peso';
          } else if (imc() >= 17.31 && imc() <= 25.27) {
            result = 'peso adequado';
          } else {
            result = 'sobrepeso';
          }
          break;
        case 18:
          if (imc() <= 17.53) {
            result = 'baixo peso';
          } else if (imc() >= 17.54 && imc() <= 25.94) {
            result = 'peso adequado';
          } else {
            result = 'sobrepeso';
          }
          break;
        case 19:
          if (imc() <= 17.79) {
            result = 'baixo peso';
          } else if (imc() >= 17.8 && imc() <= 26.35) {
            result = 'peso adequado';
          } else {
            result = 'sobrepeso';
          }
          break;
      }
    } else {
      switch (idade) {
        case 10:
          if (imc() <= 14.22) {
            result = 'baixo peso';
          } else if (imc() >= 14.23 && imc() <= 20.18) {
            result = 'peso adequado';
          } else {
            result = 'sobrepeso';
          }
          break;
        case 11:
          if (imc() <= 14.59) {
            result = 'baixo peso';
          } else if (imc() >= 14.6 && imc() <= 21.17) {
            result = 'peso adequado';
          } else {
            result = 'sobrepeso';
          }
          break;
        case 12:
          if (imc() <= 14.97) {
            result = 'baixo peso';
          } else if (imc() >= 14.98 && imc() <= 22.16) {
            result = 'peso adequado';
          } else {
            result = 'sobrepeso';
          }
          break;
        case 13:
          if (imc() <= 15.35) {
            result = 'baixo peso';
          } else if (imc() >= 15.36 && imc() <= 23.07) {
            result = 'peso adequado';
          } else {
            result = 'sobrepeso';
          }
          break;
        case 14:
          if (imc() <= 15.66) {
            result = 'baixo peso';
          } else if (imc() >= 15.67 && imc() <= 23.87) {
            result = 'peso adequado';
          } else {
            result = 'sobrepeso';
          }
          break;
        case 15:
          if (imc() <= 16) {
            result = 'baixo peso';
          } else if (imc() >= 16.01 && imc() <= 24.28) {
            result = 'peso adequado';
          } else {
            result = 'sobrepeso';
          }
          break;
        case 16:
          if (imc() <= 16.36) {
            result = 'baixo peso';
          } else if (imc() >= 16.37 && imc() <= 24.73) {
            result = 'peso adequado';
          } else {
            result = 'sobrepeso';
          }
          break;
        case 17:
          if (imc() <= 16.58) {
            result = 'baixo peso';
          } else if (imc() >= 16.59 && imc() <= 25.22) {
            result = 'peso adequado';
          } else {
            result = 'sobrepeso';
          }
          break;
        case 18:
          if (imc() <= 16.7) {
            result = 'baixo peso';
          } else if (imc() >= 16.71 && imc() <= 25.55) {
            result = 'peso adequado';
          } else {
            result = 'sobrepeso';
          }
          break;
        case 19:
          if (imc() <= 16.86) {
            result = 'baixo peso';
          } else if (imc() >= 16.87 && imc() <= 25.84) {
            result = 'peso adequado';
          } else {
            result = 'sobrepeso';
          }
          break;
      }
    }
    return result;
  }

  String adulto() {
    if (imc() < 18.5) {
      return 'baixo peso';
    } else if (imc() >= 18.5 && imc() < 25) {
      return 'peso adequado';
    } else if (imc() >= 25 && imc() < 30) {
      return 'sobrepeso';
    } else {
      return 'obesidade';
    }
  }

  String idoso() {
    if (imc() <= 22) {
      return 'baixo peso';
    } else if (imc() > 22 && imc() < 27) {
      return 'peso adequado';
    } else {
      return 'sobrepeso';
    }
  }

  String observacao() {
    if (resultado().compareTo('baixo peso') == 0) {
      return "Seu peso está abaixo do normal. Procure comer um pouco mais!!!";
    } else if (resultado().compareTo('peso adequado') == 0) {
      return "Muito bem. Seu peso está ideal para seus parametros";
    } else {
      return "Seu peso está acima do normal. Procure ajuda médica!!!";
    }
  }
}
