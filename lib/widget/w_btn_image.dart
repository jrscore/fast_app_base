import 'package:coredex_pms/app/constant/app_size.dart';
import 'package:coredex_pms/widget/w_tap.dart';
import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {

	final String path;
	final double width;
	final double height;
	final EdgeInsets padding;
	final VoidCallback ontap;
	
  const ImageButton(
		this.path, 
		this.ontap, {
		Key? key,
		this.width  	= sItem, 
		this.height 	= sItem, 
		this.padding 	= const EdgeInsets.all(sSmall)
	}) : super(key: key);


  @override Widget build(BuildContext context) => 
		Padding(
			padding: padding,
			child: Tap(
				onTap: ontap,
				child: Image.asset(path, width: width, height: height ),
			),
		);
}
