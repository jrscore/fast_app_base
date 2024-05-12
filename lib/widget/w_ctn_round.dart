import 'package:coredex_pms/core/common.dart';
import 'package:flutter/material.dart';

class RoundContainer extends StatelessWidget {
	final Widget 	child;
	final double 	radius;
	final Color? 	color;
	final EdgeInsets padding;
  const RoundContainer(
		this.child, {
		super.key,
		this.color,
		this.radius = 16,
		this.padding = const EdgeInsets.all(8.0)
	});

  @override Widget build(BuildContext context) => 
		Container(
			padding: padding,
			decoration: BoxDecoration(
				color: color ?? context.appColors.roundBackgroud,
				borderRadius: BorderRadius.circular(radius)
			),
			child: child
		);
}


