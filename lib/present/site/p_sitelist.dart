import 'package:coredex_pms/present/common/pg_map_viewer.dart';
import 'package:coredex_pms/present/site/c_sitelist.dart';
import 'package:coredex_pms/present/checkform/p_chkform_list.dart';
import 'package:coredex_pms/present/site/detail/p_site_detail.dart';
import 'package:coredex_pms/present/site/search/p_search.dart';
import 'package:coredex_pms/widget/w_ctn_row.dart';
import 'package:flutter/material.dart';

import 'package:coredex_pms/app/constant/app_const.dart';
import 'package:coredex_pms/app/constant/app_size.dart';
import 'package:coredex_pms/core/common.dart';
import 'package:get/get.dart';



class SiteListPage extends StatelessWidget {
  const SiteListPage({super.key});

  @override Widget build(BuildContext context) {
		final state = Get.find<SiteController>();
		return Column(
			children: [

				// 앱바
				RowContainer(
					height: AppConst.appBarHeight,
					color: context.appColors.appbarBackgroud,
					children: [
						'수용가'.text.size(sLarge).bold.make(),
						emptyExpanded,
						IconButton(onPressed: ()=>Get.to(SiteMapPage()),	icon: Icon(Icons.map_outlined), iconSize: sXL,),
						IconButton(onPressed: ()=>Get.to(SearchPage()),		icon: Icon(Icons.search), iconSize: sXL,)
					]
				),
				hSmall,

				// 지역스크롤
				SingleChildScrollView(
					scrollDirection: Axis.horizontal,
					padding: EdgeInsets.all(sSmall),
					child: Obx(() => 
						state.zonelist.isEmpty
						? CircularProgressIndicator()
						: Row(
								mainAxisAlignment: MainAxisAlignment.start,
								children: state.zonelist.map((zone) => 
									Tap(
										onTap: () => state.filterSearch(zone),
										child: Chip(label: Text(zone)),
									)
								).toList()
							),
					)
				),
				hSmall,

				// Colum => Expanded => Listview
				'수용가 리스트'.text.make(),
				Obx(() => state.filterlist.isEmpty 
					? Center(child: '지역을 선택하세요'.text.make())
					:	ListView(
						children: state.filterlist.map(
							(site) => Row(
								mainAxisSize: MainAxisSize.min,
								children: [
									site.zone.text.size(sLarge).make().box.make().expand(),
									wItem,
									site.tag.text.size(sItem).make().box.make().expand(),
									wItem,
									site.alias.text.size(sItem).make().box.make().expand(),
									wItem,
									site.pwr.text.size(12).bold.make().box.make().expand(),
									emptyExpanded,
									IconButton(onPressed: ()=>Get.to(CheckFormListPage(site: site)),	icon: Icon(Icons.fact_check_outlined),	iconSize: sLarge,),
									IconButton(onPressed: ()=>Get.to(SiteDetailPage(site: site)),			icon: Icon(Icons.home),	iconSize: sLarge,),
							]).pSymmetric(v:sItem)
						).toList(),
					),
				)

			] //Column
		);
	}

  // void showSnackbar(BuildContext context) {
  //   context.showSnackbar('snackbar 입니다.',
	// 		extraButton: Tap(
	// 			onTap: () =>context.showErrorSnackbar('error'),
	// 			child: '에러 보여주기 버튼'.text.white.size(13).make().centered().pSymmetric(h: 10, v: 5),
	// 		));
  // }

  // Future<void> showConfirmDialog(BuildContext context) async {

  //   final confirmDialogResult = await ConfirmDialog(
  //     '오늘 기분이 좋나요?',
  //     buttonText: "네",
  //     cancelButtonText: "아니오",
  //   ).show();
  //   debugPrint(confirmDialogResult?.isSuccess.toString());

  //   confirmDialogResult?.runIfSuccess((data) {
  //     ColorBottomSheet(
  //       '❤️',
  //       context: context,
  //       backgroundColor: Colors.yellow.shade200,
  //     ).show();
  //   });

  //   confirmDialogResult?.runIfFailure((data) {
  //     ColorBottomSheet(
  //       '❤️힘내여',
  //       backgroundColor: Colors.yellow.shade300,
  //       textColor: Colors.redAccent,
  //     ).show();
  //   });

  // }

  // Future<void> showMessageDialog() async {
  //   final result = await MessageDialog("안녕하세요").show();
  //   debugPrint(result.toString());
  // }

  // void openDrawer(BuildContext context) => Scaffold.of(context).openDrawer();
}
