import 'package:coredex_pms/app/constant/app_size.dart';
import 'package:coredex_pms/core/common.dart';
import 'package:flutter/material.dart';

class TitleColumnContainer extends StatelessWidget {
	final String				title;  
	final List<Widget>	column;  
	final double				radius;  
	final Color?				color;  
	final EdgeInsets		padding;  

	const TitleColumnContainer({
		super.key,
		required this.title,
		required this.column,
		this.color,
		this.radius		= sItem,
		this.padding	= pvItem,
	});

	@override
	Widget build(BuildContext context) => 

		Container(
			padding: padding,
			decoration: BoxDecoration(
				color: color ?? context.appColors.roundBackgroud, 
				borderRadius: BorderRadius.circular(radius),
			),
			child: Column(
				crossAxisAlignment: CrossAxisAlignment.start,
				children: [
					hItem,
					Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)), 
					hItem,
					...column,  
				],
			),
		);
}
