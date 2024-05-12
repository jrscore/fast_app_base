import 'package:coredex_pms/core/common.dart';
import 'package:coredex_pms/app/constant/app_colors.dart';
import 'package:flutter/material.dart';

enum RoundButtonTheme {
  blink			(AppColors.blue, Colors.white, 			Colors.black, 		bgProvider: blueColorProvider),
  blue			(AppColors.blue, Colors.white, 			AppColors.blue, 	bgProvider: blueColorProvider),
  blueBorder(Colors.white,		AppColors.darkBlue,AppColors.blue,	bgProvider: blueColorProvider);

  const RoundButtonTheme(
    this.bground,
    this.text,
    this.border, {
    this.bgProvider,
  }) : shadow = Colors.transparent;

  ///RoundButtonTheme 안에서 Custome Theme 분기가 필요하다면 이렇게 함수로 사용
  final Color Function(BuildContext context)? bgProvider;
  final Color bground;
  final Color text;
  final Color border;
  final Color shadow;
}

Color blueColorProvider(BuildContext context) => context.appColors.blueButtonBg;

Color Function(BuildContext context) defaultColorProvider(Color color) => blueColorProvider;
