// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coredex_pms/present/stock/f_mystock.dart';
import 'package:coredex_pms/present/stock/f_discover.dart';
import 'package:coredex_pms/present/site/search/p_search.dart';
import 'package:coredex_pms/present/setting/p_setting.dart';
import 'package:coredex_pms/widget/w_btn_image.dart';
import 'package:flutter/material.dart';

import 'package:coredex_pms/core/common.dart';
import 'package:coredex_pms/app/constant/app_const.dart';
import 'package:coredex_pms/app/constant/app_size.dart';
import 'package:get/get.dart';

class StockPage extends StatefulWidget{
	const StockPage({super.key});
  @override  State<StockPage> createState() => _StockPageState();
}


// Animation Ticker
class _StockPageState extends State<StockPage>  with SingleTickerProviderStateMixin  {
	
  int tabIdx = 0;
	late final _tabcon = TabController(length: 2, vsync: this); // late => 호출시점시 메모리할당

	@override Widget build(BuildContext context) => 
		CustomScrollView(
			slivers: [

				///	SLIVER #1
				SliverAppBar(
					pinned: true,	//앱바고정
					backgroundColor: context.appColors.roundBackgroud,
					actions: [
						ImageButton('$imgPath/icon/stock_search.png', 	()=>Get.to(SearchPage()),	height: sLarge, width: sLarge),
						ImageButton('$imgPath/icon/stock_calendar.png', ()=>context.showSnackbar('cal'),	height: sLarge, width: sLarge),
						ImageButton('$imgPath/icon/stock_settings.png', ()=>Get.to(SettingPage()),			height: sLarge, width: sLarge),
				]),

				
				/// SLIVER #2
				SliverToBoxAdapter(	// SliverBoxAdapter => BoxWidget(container, column, row)를 sliver로 변경
					child: Column(
						children: [
							_title(),
							tabbar(),
							tabIdx==0 ? MyStockFrag() : DiscoveryFrag()
					]),
				),

			]	
		);



	Column tabbar() => Column(
		mainAxisSize: MainAxisSize.min,
		children: [
			TabBar(
				labelStyle: 	const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
				labelPadding: 		pvLarge,
				indicatorColor: Colors.white,
				indicatorSize: 		TabBarIndicatorSize.tab,
				indicatorPadding: phSection,
				controller: _tabcon,
				onTap: (i) => setState(() => tabIdx=i),
				tabs: [
					'내 주식'.text.make(),
					'오늘의 발견'.text.make(),
				],
			),
			const HLine(),
		]
	);// CSV - CustomSliverView
}


class _title extends StatelessWidget {
	const _title();
	@override Widget build(BuildContext context) => Container(
		color: context.appColors.roundBackgroud,
		child: Row(
			mainAxisSize: MainAxisSize.min,
			crossAxisAlignment: CrossAxisAlignment.end,
			children: [
				'토스뱅크'.text.size(24).bold.make(),
				wItem,
				'SP500'.text.size(12).bold.make(),
				wSmall,
				23413145.toComma().text.color(context.appColors.plus).make()
		]),
	);
}


