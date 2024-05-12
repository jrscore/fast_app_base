import 'package:coredex_pms/app/constant/app_size.dart';
import 'package:coredex_pms/core/common.dart';
import 'package:coredex_pms/present/checkform/c_chkform_list.dart';
import 'package:coredex_pms/present/checkform/p_chkform.dart';
import 'package:coredex_pms/present/common/pg_pdf_viewer.dart';
import 'package:coredex_pms/present/checkform/widget/w_chklist_tile.dart';
import 'package:coredex_pms/present/site/m_sitelist.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


// ##. Column - Expanded - Listview
class CheckFormListPage extends StatelessWidget {

	final SiteModel site;
	const CheckFormListPage({required this.site, super.key});

	@override 
	Widget build(BuildContext context){
		final con = Get.put(CheckFormListController(site.sid));

		return Scaffold(

			appBar: AppBar(
				title: '${site.alias} 점검표'.text.make(),
				actions: [
					IconButton(
						icon: Icon(Icons.add),
						onPressed: ()=>Get.to(()=>CheckFormPage(site:site, isfirst: false,)) 
					)
				]
			),
			// ### COLUM -> EXPANDED -> LISTVIEW
			body: Obx( ()=> 
					con.list.isEmpty 
					? Center(
						child: Column(children: [
							'점검표를 생성해 주세요'.text.headline5(context).make(),
							hSection,
							IconButton(onPressed: ()=>Get.to(()=>CheckFormPage(site:site, isfirst: true,)), icon: Icon(Icons.plus_one))
						])
					)
					: ListView(
						children: con.list.map((form) => 
							CheckListTile(
								times:	form.times.toString(), 
								date:		form.date, 
								mng:		form.mng, 
								ontap:	()=>Get.to(()=>PdfViewerPage())
							)).toList() 
					)
				),
		);
	}
}