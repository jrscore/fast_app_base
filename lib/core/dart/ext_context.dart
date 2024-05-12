import 'package:coredex_pms/core/common.dart';
import 'package:coredex_pms/app/theme/theme_colors.dart';
import 'package:coredex_pms/app/theme/theme_holder.dart';
import 'package:coredex_pms/app/theme/theme_type.dart';
import 'package:flutter/material.dart';


extension ContextExtension on BuildContext {
  double 			width(double widthSize) 	=> MediaQuery.of(this).size.width * widthSize;
  double 			height(double heightSize) => MediaQuery.of(this).size.height * heightSize;
  double 			get deviceWidth 					=> MediaQuery.of(this).size.width;
  double 			get deviceHeight 					=> MediaQuery.of(this).size.height;
  Orientation get deviceOrient 					=> MediaQuery.of(this).orientation;
  double 			get statusBarHeight 			=> MediaQuery.of(this).padding.top;
  double 			get viewPaddingBottom 		=> MediaQuery.of(this).padding.bottom;
  Brightness	get platformBrightness 		=> MediaQuery.of(this).platformBrightness;
  AbsColor 		get appColors 						=> ThemeHolder.of(this).color;					
  AbsShadow 	get appShadows 						=> ThemeHolder.of(this).shadow;					
  ThemeType 	get themeType 						=> ThemeHolder.of(this).type;					
  Function(ThemeType) get changeTheme 	=> ThemeHolder.of(this).changeTheme;		
}
