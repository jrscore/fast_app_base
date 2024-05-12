import 'package:coredex_pms/app/constant/app_size.dart';
import 'package:coredex_pms/core/common.dart';
import 'package:coredex_pms/present/checkform/p_chkform_list.dart';
import 'package:coredex_pms/present/site/m_sitelist.dart';
import 'package:coredex_pms/widget/w_btn_big.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';


class SiteDetailPage extends StatelessWidget {

	final SiteModel site;
	const SiteDetailPage({super.key, required this.site});

	@override Widget build(BuildContext context) => 
		Scaffold(
			appBar: AppBar(title: '${site.zone} ${site.alias}'.text.make(),),
			// floatingActionButton: FloatingActionButton(onPressed: onPressed),
			
			body: SingleChildScrollView(
				child: Column(
					children: [

						// #. 기본정보 RBoxContainer
						Card(
							margin: EdgeInsets.symmetric(horizontal: sSmall),
							child: Column(
								children: [
									Row(children: [
										site.addr.text.make(),
										emptyExpanded,
										IconButton(icon: Icon(Icons.phone), onPressed: ()async => await launchUrl(Uri(scheme: 'tel', path:'0101'))),
										IconButton(icon: Icon(Icons.sms), 	onPressed: ()async => await launchUrl(Uri(scheme: 'tel', path:'0101'))),
									]),
									Row(children: [
										site.pwr.text.headline5(context).make(),
										site.pass.text.headline5(context).make(),
										emptyExpanded,
										IconButton(icon: Icon(Icons.settings), 	onPressed: ()async => await launchUrl(Uri(scheme: 'tel', path:'0101'))),
									]),
								],
							),
						),
						hSmall,

						// #. 메모
						Card(
							margin: EdgeInsets.symmetric(horizontal: sSmall),
							child: Column(
								children: [
									Row(children: [
										'메모'.text.headline5(context).make(),
										emptyExpanded,
										IconButton(icon: Icon(Icons.add), 	onPressed: (){}),
									]),
									Column(
										//사이트메모들이 들어간다
									),
								],
							),
						),
						hSmall,

						// #. 팩코드
						Card(
							margin: EdgeInsets.symmetric(horizontal: sSmall),
							child: Column(
								children: [
									Row(children: [
										'모니털이'.text.headline5(context).make(),
										emptyExpanded,
										IconButton(icon: Icon(Icons.add), 	onPressed: (){}),
									]),
									Column(
										//사이트메모들이 들어간다
									),
								],
							),
						),

						// #. 모니터링
						Card(
							margin: EdgeInsets.symmetric(horizontal: sSmall),
							child: Column(
								children: [
									Row(children: [
										'모니털이'.text.headline5(context).make(),
										emptyExpanded,
										IconButton(icon: Icon(Icons.add), 	onPressed: (){}),
									]),
									Column(
										//사이트메모들이 들어간다
									),
								],
							),
						),

						BigButton('FACDE',	cb: () => Get.to(CheckFormListPage(site: site))),
					],
				),
			)
		);
}




class _Memo extends StatelessWidget {
	const _Memo();

	@override
	Widget build(BuildContext context) {
		return Container(
			padding: EdgeInsets.all(8),
			color: context.appColors.appbarBackgroud,
			child: Column(
				children: [
					ListTile(
						title: Text('Memos'),
						trailing: IconButton(
							icon: Icon(Icons.add),
							onPressed: () {},
						),
					),
					Expanded(
						child: ListView.builder(
							itemCount: 5,
							itemBuilder: (c, i) => Dismissible(
								key: Key('memo_$i'),
								direction: DismissDirection.endToStart,
								onDismissed: (direction) {},
								background: Container(
									color: Colors.red,
									alignment: Alignment.centerRight,
									child: Padding(
										padding: EdgeInsets.only(right: 20),
										child: Icon(Icons.delete, color: Colors.white),
									),
								),
								child: ListTile(title: Text('Memo $i')),
							),
						),
					),
				],
			),
		);
	}
}
