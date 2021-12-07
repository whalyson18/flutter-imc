// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:imc/home.dart';
import 'package:imc/shared/theme/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora IMC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          primaryColor: AppColors.backgroundColor,
          scaffoldBackgroundColor: AppColors.backgroundColor),
      home: Tela(),
    );
  }
}
