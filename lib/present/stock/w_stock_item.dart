import 'package:coredex_pms/core/common.dart';
import 'package:coredex_pms/app/constant/app_size.dart';
import 'package:coredex_pms/present/stock/m_stock.dart';
import 'package:coredex_pms/widget/w_ctn_row.dart';
import 'package:flutter/material.dart';

class StockItem extends StatelessWidget {
	final Stock stock;
	const StockItem(this.stock, {super.key});

	@override Widget build(BuildContext context) => 
		RowContainer(
			color: context.backgroundColor,
			children: [
				wItem,
				Image.asset(stock.img, width: sXL),
				wItem,
				stock.title.text.size(sItem).bold.make(),
				emptyExpanded,
				Column(
					crossAxisAlignment: CrossAxisAlignment.end,
					children: [
						stock.percent.text.color(stock.getColor(context)).make(),
						'${stock.current.toComma()}원'.text.color(context.appColors.lessImportant).make()
					]
				),
			],
		);
}