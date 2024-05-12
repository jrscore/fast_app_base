import 'package:flutter/material.dart';

import '../../core/prefs/prefs.dart';
import 'theme_type.dart';
import 'theme_holder.dart';
import 'theme_util.dart';


// ## Container -> Holder -> AppTheme -> themeData : dark ()
//																		-> themeData : light()

class ThemeContainer extends StatefulWidget {
  final Widget child;
  const ThemeContainer({Key? key, required this.child}) : super(key: key);
  @override   State<ThemeContainer> createState() => _ThemeContainerState();
}

class _ThemeContainerState extends State<ThemeContainer> {

  late  ThemeType		theme = cached ?? ddefault ?? sysTheme;

  get cached 		=> Prefs.appTheme.get();
  get ddefault 	=> ThemeType.dark;
	get sysTheme 	=> ThemeUtil.getSysBright == Brightness.dark ? ThemeType.dark : ThemeType.light;
	
  @override Widget build(BuildContext context) => ThemeHolder(
		changeTheme: toggleTheme,
		type: theme,
		child: widget.child,
  );

  void toggleTheme(ThemeType type) => setState(() => theme = type);
}
