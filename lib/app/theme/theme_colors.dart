
import 'package:coredex_pms/app/constant/app_colors.dart';
import 'package:flutter/material.dart';
export 'package:coredex_pms/app/constant/app_colors.dart';

typedef ColorProvider = Color Function();

abstract class AbsColor {
  const AbsColor();
	Color get seedColor 					=> const Color(0xff26ff8c);
	Color get veryBrightGrey 			=> AppColors.brightGrey;
	Color get drawerBg 						=> const Color.fromARGB(255, 255, 255, 255);
	Color get scrollableItem 			=> const Color.fromARGB(255, 57, 57, 57);
	Color get iconActive 					=> const Color.fromARGB(255, 0, 0, 0);
	Color get iconInactive			=> const Color.fromARGB(255, 162, 162, 162);
	Color get inActivate 					=> const Color.fromARGB(255, 200, 207, 220);
	Color get activate 						=> const Color.fromARGB(255, 63, 72, 95);
	Color get badgeBg 						=> AppColors.blueGreen;
	Color get textBadgeText 			=> Colors.white;
	Color get badgeBorder 				=> Colors.transparent;
	Color get divider 						=> const Color.fromARGB(255, 228, 228, 228);
	Color get text 								=> AppColors.darkGrey;
	Color get hintText 						=> AppColors.middleGrey;
	Color get focusedBorder 			=> AppColors.darkGrey;
	Color get confirmText 				=> AppColors.blue;
	Color get drawerText 					=> text;
	Color get snackbarBgColor 		=> AppColors.mediumBlue;
	Color get blueButtonBg				=> AppColors.darkBlue;
	Color get appbarBackgroud 		=> Color.fromARGB(255, 16, 16, 18);
  Color get roundBackgroud 			=> Color.fromARGB(255, 24, 24, 24);
  Color get btnBackgourd 				=> Color.fromARGB(255, 48, 48, 48);
  Color get unreadColor 				=> Color.fromARGB(255, 48, 48, 48);
  Color get lessImportant 			=> AppColors.grey;
  Color get plus					 			=> Color.fromARGB(255, 230,  71,  83);
  Color get minus					 			=> Color.fromARGB(255,  10, 110, 220);
}



class DarkColor extends AbsColor {
  const DarkColor();
  @override Color get seedColor				=> AppColors.mediumBlue;
  @override Color get activate 				=> Colors.white;
  @override Color get badgeBg 				=> AppColors.darkOrange;
  @override Color get divider 				=> const Color.fromARGB(255, 93, 93, 93);
  @override Color get drawerBg				=> const Color.fromARGB(255, 42, 42, 42);
  @override Color get hintText 				=> AppColors.grey;
  @override Color get iconActive 			=> const Color.fromARGB(255, 255, 255, 255);
  @override Color get iconInactive => const Color.fromARGB(255, 131, 131, 131);
  @override Color get inActivate 			=> const Color.fromARGB(255, 65, 68, 74);
  @override Color get text 						=> Colors.white;
  @override Color get focusedBorder 	=> AppColors.darkGrey;
  @override Color get confirmText 		=> AppColors.brightBlue;
  @override Color get blueButtonBg		=> AppColors.blue;
}



class LightColor extends AbsColor {
  const LightColor();
}
