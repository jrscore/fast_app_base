import 'package:coredex_pms/core/prefs/prefs.dart';
import 'package:coredex_pms/app/theme/theme_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../core/common.dart';

class ThemeUtil {

  static Brightness get getSysBright => 
			SchedulerBinding.instance.platformDispatcher.platformBrightness;

  static void changeTheme(BuildContext context, ThemeType theme) {
    Prefs.appTheme.set(theme); // 또는 Prefs.appTheme(theme) 이렇게 저장도 가능
    context.changeTheme(theme);
  }

  static void toggleTheme(BuildContext context) {
    final theme = context.themeType;
    switch (theme) {
      case ThemeType.dark: 	changeTheme(context, ThemeType.light);	break;
      case ThemeType.light:	changeTheme(context, ThemeType.dark);		break;
    }
  }
}
