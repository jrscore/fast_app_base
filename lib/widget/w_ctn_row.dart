import 'package:coredex_pms/core/common.dart';
import 'package:coredex_pms/app/constant/app_size.dart';
import 'package:flutter/material.dart';


class RowContainer extends StatelessWidget {
	final Color? color;
	final double? height;
	final double 	radius;
	final EdgeInsets? padding;
	final List<Widget> children;

  const RowContainer({
		super.key,
		required this.children, 
		this.color,
		this.height,
		this.radius = 16,
		this.padding = phItem,
	});

	@override Widget build(BuildContext context) => 
		Container(
			padding: padding,
			height: height,
			decoration: BoxDecoration(
				color: color ?? context.appColors.roundBackgroud,
				borderRadius: BorderRadius.circular(radius)
			),
			child: Row(
				children: children
			),
	);
}
