import 'dart:ui';

import 'package:coredex_pms/app/theme/theme_type.dart';
import 'package:coredex_pms/app/theme/theme_util.dart';
import 'package:coredex_pms/core/prefs/prefs.dart';
import 'package:coredex_pms/present/dash/dash.dart';
import 'package:coredex_pms/present/site/p_sitelist.dart';
import 'package:coredex_pms/present/stock/p_stock.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

mixin class AppStateProvider {
	final appstate = Get.find<AppState>();
}


class AppState extends GetxService with WidgetsBindingObserver {

	static AppState get instance => Get.find();

	final 	index = 0.obs;
  final 	pages = [DashPage(),SiteListPage(),StockPage(),DashPage()];// final pages = [TabItem.alarm.page, TabItem.search.page, TabItem.todos.page, TabItem.sites.page];


	// THEME Manage
	final foreground = true.obs;
	final theme = ThemeType.dark.obs;// static ThemeType theme = cached ?? ddefault ?? sysTheme;


  ThemeType get cached 		=> Prefs.appTheme.get() ?? dftTheme;
  ThemeType get dftTheme 	=> theme.value;
	ThemeType get sysTheme 	=> ThemeUtil.getSysBright == Brightness.dark ? ThemeType.dark : ThemeType.light;
	
  void toggleTheme(ThemeType type) => theme.value=type;

  @override void onInit() {
    super.onInit();
    WidgetsBinding.instance.addObserver(this);
  }

  @override void onClose() {
		WidgetsBinding.instance.removeObserver(this);
    super.onClose();
  }

  @override void didChangeAppLifecycleState(AppLifecycleState state) {
		switch (state) {
			case AppLifecycleState.resumed:		foreground.value = true;		break;
			case AppLifecycleState.inactive:															break;
			case AppLifecycleState.paused:		foreground.value = false;		break;
			case AppLifecycleState.detached:															break;
			case AppLifecycleState.hidden: 																break;
		}
    super.didChangeAppLifecycleState(state);
  }
}