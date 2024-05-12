import 'package:flutter/material.dart';

import '../core/common.dart';

class HLine extends StatelessWidget {
  final Color? 				color;
  final EdgeInsets? 	margin;
  final double 				height;
  const HLine({Key? key,this.color, this.height = 1, this.margin}) : super(key: key);

  @override Widget build(BuildContext context) => 
		Container(margin: margin, height: height, color: color ?? context.appColors.divider,      );
 }


class VLine extends StatelessWidget {
	final Color? 				color;
	final EdgeInsets? 	margin;
	final double 				width;
	
	const VLine({ Key? key, this.color, this.width = 1, this.margin}) : super(key: key);
	@override Widget build(BuildContext context) => 
		Container(margin: margin, width: width, color: color ?? context.appColors.divider );	
}


