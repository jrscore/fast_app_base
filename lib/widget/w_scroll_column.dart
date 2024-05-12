// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:coredex_pms/app/constant/app_size.dart';

class ScrollableColumn extends StatelessWidget {
	final List<Widget> children;
  const ScrollableColumn({Key? key, required this.children }) : super(key: key);

  @override
	Widget build(BuildContext context) {
    return SingleChildScrollView(
			child: Padding(
				padding: EdgeInsets.symmetric(horizontal: sItem),
				child: Column(children: children),
			)
		);
  }
}
