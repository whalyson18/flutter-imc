import 'package:flutter/material.dart';
import 'package:imc/result.dart';
import 'package:imc/shared/constantes/app_const.dart';
import 'package:imc/shared/theme/app_colors.dart';

class FotterButton extends StatelessWidget {
  FotterButton({required this.title, required this.onPress});

  final String title;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: AppConst.buttonStyleButtonFotter,
          ),
        ),
        padding: EdgeInsets.only(bottom: 10),
        color: AppColors.containerFotter,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: AppConst.heigthtContainerFotter,
      ),
    );
  }
}
