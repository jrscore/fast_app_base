import 'package:coredex_pms/present/site/p_sitelist.dart';
import 'package:coredex_pms/present/stock/p_stock.dart';
import 'package:coredex_pms/present/todo/p_todo.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoutes {
	static final table = [
		GetPage(name: '/', 						page: () => const SiteListPage()),
		GetPage(name: '/stock',				page: () => const StockPage()),
		GetPage(name: '/todo',				page: () => const TodoPage()),
	];}