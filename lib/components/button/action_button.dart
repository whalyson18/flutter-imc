import 'package:flutter/material.dart';
import 'package:imc/shared/theme/app_colors.dart';

class ActionButton extends StatelessWidget {
  ActionButton({required this.icon,required this.onPress});

  final IconData icon;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPress,
      elevation: 6,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: CircleBorder(),
      fillColor: AppColors.inactiveCard,
    );
  }
}
