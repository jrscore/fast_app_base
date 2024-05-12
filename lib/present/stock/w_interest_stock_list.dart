import 'package:coredex_pms/present/stock/m_stock.dart';
import 'package:coredex_pms/present/stock/w_stock_item.dart';
import 'package:flutter/material.dart';

class InterestStock extends StatelessWidget {
	const InterestStock({super.key});

	@override Widget build(BuildContext context) => 
		Column(children: stocklist.map((it) => StockItem(it)).toList());
}