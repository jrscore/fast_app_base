import 'package:coredex_pms/core/common.dart';
import 'package:coredex_pms/app/theme/theme_colors.dart';
import 'package:flutter/material.dart';

enum ThemeType {
	dark ( DarkColor(),  DarkShadows()),	
	light( LightColor(), LightShadows());

	final AbsColor 	color;
	final AbsShadow shadow;
	const ThemeType(this.color, this.shadow);
	
	ThemeData get themeData => (this==ThemeType.dark) ? _dark : _light ;
}


final _dark = ThemeData(
	useMaterial3: true,
	brightness: Brightness.dark,
	visualDensity: VisualDensity.adaptivePlatformDensity,
	scaffoldBackgroundColor: AppColors.veryDarkGrey,
	colorScheme: ColorScheme.fromSeed(
		brightness: Brightness.dark,
		seedColor: ThemeType.dark.color.seedColor,
		background: AppColors.veryDarkGrey
	)
);


final _light = ThemeData(
	useMaterial3: true,
	visualDensity: VisualDensity.adaptivePlatformDensity,
	brightness: Brightness.light,
	colorScheme: ColorScheme.fromSeed(seedColor: ThemeType.light.color.seedColor)
);




// textTheme: CustomGoogleFonts.diphylleiaTextTheme(ThemeData(brightness: Brightness.light).textTheme),
// textTheme: GoogleFonts.nanumMyeongjoTextTheme(ThemeData(brightness: Brightness.dark).textTheme,),
// const darkColorSeed = Color(0xbcd5ff7e);