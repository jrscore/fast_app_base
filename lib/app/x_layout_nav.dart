import 'package:coredex_pms/core/common.dart';
import 'package:coredex_pms/present/favor/p_favorite.dart';
import 'package:coredex_pms/present/site/p_sitelist.dart';
import 'package:coredex_pms/present/stock/p_stock.dart';
import 'package:flutter/material.dart';

enum NavItem {
  alarm		( Icons.home, '알람',		SiteListPage()),
  todos   ( Icons.star, '메모',	 	FavoritePage()),
  sites		( Icons.star, '수용',		StockPage()),
	search  ( Icons.star, '검색',	  StockPage());

  final Widget page;
  final String label;
  final IconData active;
  final IconData inActive;

  const NavItem(this.active, this.label, this.page, {IconData? inActiveIcon}) : inActive = inActiveIcon ?? active;

  getItem(BuildContext ctx, {required bool isActive}) =>  BottomNavigationBarItem(
		label: label,
		icon: Icon(
			key: ValueKey(label),
			isActive ? active : inActive,
			color: isActive ? ctx.appColors.iconActive : ctx.appColors.iconInactive,
		),
	);
}

