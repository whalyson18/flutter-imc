// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Conteudo extends StatelessWidget {
  Conteudo({required this.icon, required this.description});

  final IconData icon;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 95,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          description,
          style: TextStyle(fontSize: 20, color: Colors.black),
        )
      ],
    );
  }
}
