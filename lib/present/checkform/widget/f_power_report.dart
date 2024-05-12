import 'package:coredex_pms/core/common.dart';
import 'package:coredex_pms/domain/use_case/x__checkform.dart';
import 'package:coredex_pms/present/checkform/c_chkform.dart';
import 'package:coredex_pms/widget/w_ctn_column.dart';
import 'package:coredex_pms/widget/w_ctn_row.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class YeildReportFrag extends StatelessWidget {
  const YeildReportFrag({super.key});

  @override Widget build(BuildContext context) {
		final provider	= Get.find<CheckFormController>();
    return Material(
			child: RColumContainer(
				children: [
					RowContainer(children: [
						'전월 발전량'.	text.make(),
					]),
					'전월발전시간'.	text.make(),
					Divider(),
					'기간 발전량'.	text.make(),
					'기간 송전량'.	text.make(),
					'발전소 효율'.	text.make(),
					RowContainer(children: [
						ElevatedButton(onPressed: (){}, child: '다시작성'.text.make()),
						ElevatedButton(onPressed: (){}, child: '보고서작성'.text.make()),
					])

				]
			)
		);
  }
}