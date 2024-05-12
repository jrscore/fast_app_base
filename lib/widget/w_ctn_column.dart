import 'package:coredex_pms/core/common.dart';
import 'package:flutter/material.dart';

class RColumContainer extends StatelessWidget {
	final Color? color;
	final List<Widget> children;
  const RColumContainer({required this.children, Key? key, this.color }) : super(key: key);

	@override Widget build(BuildContext context) => 
		Container(
			color: color ?? context.appColors.roundBackgroud,
			child: Column(
				mainAxisSize: MainAxisSize.min,
				children: children
			),
	);
}
