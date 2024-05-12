import 'package:flutter/material.dart';

import 'package:coredex_pms/app/constant/app_const.dart';
import 'package:coredex_pms/core/dart/ext_duration.dart';
import 'package:coredex_pms/core/util/async_dart.dart';




class RefreshStack extends StatelessWidget {
	final Widget? appbar;
	final Widget  body;
  const RefreshStack({Key? key, this.appbar, required this.body }) : super(key: key);

  @override Widget build(BuildContext context) =>

    Stack(
			children: [
				// 컨테이너
				RefreshIndicator(
					edgeOffset: AppConst.appBarHeight,
					onRefresh: () async { await sleepAsync(2000.ms); },
					child: Container(
						padding: EdgeInsets.only(top: AppConst.appBarHeight),
						child: body,
					)
				),
				// 앱바
				appbar ?? SizedBox(),
			]
		);
  
}
