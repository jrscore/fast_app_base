import 'package:coredex_pms/core/common.dart';
import 'package:coredex_pms/core/util/keyboard_util.dart';
import 'package:coredex_pms/present/site/c_sitelist.dart';
import 'package:coredex_pms/present/site/detail/p_site_detail.dart';
import 'package:coredex_pms/present/site/_widget/w_sitelist_item.dart';
import 'package:coredex_pms/widget/w_text_field_with_delete.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchPage extends StatelessWidget{ 

	final con = Get.find<SiteController>();
	SearchPage({super.key});

	@override Widget build(BuildContext context) {
		// txtcon.addListener(() => search.search(txtcon.text));
		final txtcon = TextEditingController();
		return Scaffold(

			appBar: AppBar(
				title: TextFieldWithDelete(
					controller: txtcon,
					texthint: '수용가 검색 ....',
					textInputAction: TextInputAction.search,	//키보드에검색나오게
					onEditingComplete: () {
						KeyboardUtil.hide(context);
						con.filterSearch(txtcon.text);
					}
				),
			),
			
			// 갯수가 많을경우 listview.builder사용
			body: Obx(() =>
				// search.autoCompletes.isEmpty  ?  ListView(children: [SearchHistoryListFrag(),SearchListFrag()]): 
				con.filterlist.isEmpty
				? Center(child: '검색결과가 없습니다'.text.make())
				: ListView.builder(
					itemCount: con.filterlist.length,
					itemBuilder: (_, i) => 
						SiteListItem(con.sitelist[i], i, onTap: ()=> Get.to(SiteDetailPage(site: con.sitelist[i],)))
					)
				)
			);
		}
}







