import 'package:coredex_pms/app/theme/theme_colors.dart';
import 'package:coredex_pms/app/theme/theme_type.dart';
import 'package:flutter/material.dart';

import '../../core/common.dart';

class ThemeHolder extends InheritedWidget {
  final ThemeType type;
  final AbsColor  color;
  final AbsShadow shadow;
  final Function(ThemeType) changeTheme;

  ThemeHolder({
    required Widget child,
    required this.type,
    required this.changeTheme,
    Key? key,
  })  : color = type.color, shadow = type.shadow, super(key: key, child: child);

  @override bool updateShouldNotify(ThemeHolder oldWidget) {
    final old = oldWidget.type;
    final current = type;
    final need = old != current;
    return need;
  }

  static ThemeHolder of(BuildContext context) {
    ThemeHolder inherited = (context.dependOnInheritedWidgetOfExactType<ThemeHolder>())!;
    return inherited;
  }
}
