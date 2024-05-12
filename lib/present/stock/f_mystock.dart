import 'package:coredex_pms/core/common.dart';
import 'package:coredex_pms/app/constant/app_size.dart';
import 'package:coredex_pms/present/stock/m_stock.dart';
import 'package:coredex_pms/present/stock/w_stock_item.dart';
import 'package:coredex_pms/widget/w_btn_arrow.dart';
import 'package:coredex_pms/widget/w_btn_long.dart';
import 'package:coredex_pms/widget/w_ctn_column.dart';
import 'package:coredex_pms/widget/w_ctn_round.dart';
import 'package:coredex_pms/widget/w_ctn_row.dart';
import 'package:flutter/material.dart';

class MyStockFrag extends StatelessWidget {
  const MyStockFrag({super.key});

  @override Widget build(BuildContext context) => 
		Column(
			mainAxisSize: MainAxisSize.min,
			children: [
				const _GetMyAccount(),
				hItem, 
				_StockItem()],
		);
}



class _GetMyAccount extends StatelessWidget {
	const _GetMyAccount();
	
	 get cbn1 => null;

	@override Widget build(BuildContext context) => 
		RColumContainer(
			children: [
				hItem,
				'443원'.text.size(sItem).bold.make(),

				RowContainer( children :[
					hItem,
					'4445353원'.text.size(sItem).make(),
					Arrow.right(),
					emptyExpanded,
					RoundContainer('채우기'.text.make())
				]),
				hSection,
				const HLine(),
				TitleArrowButton('주문내역', cb: () {} ),
				TitleArrowButton('판매수익', cb: () {})
			]
		);
}




class _StockItem extends StatelessWidget {
	const _StockItem();
	@override Widget build(BuildContext context) => Container(
		padding: EdgeInsets.symmetric(horizontal: sItem),
		color: context.appColors.roundBackgroud,
		child: Column(
			children: [
				hSection,
				Row(
					mainAxisAlignment: MainAxisAlignment.spaceBetween,
					children: [
						'관심주식'.text.bold.make(),
						'편집하기'.text.bold.make(),
					],
				),
				hItem,
				TitleArrowButton('기본', cb: (){}),
				Column(children: stocklist.map((it)=>StockItem(it)).toList())
			]
		),

	);
}