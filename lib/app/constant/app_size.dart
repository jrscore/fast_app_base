

import 'package:flutter/material.dart';

const sSmall 		= 8.0;
const sItem 		= 16.0;
const sLarge 		= 24.0;
const sXL 			= 32.0;
const sXXL 			= 40.0;

const hSmall 		= SizedBox(height: 8);
const hItem			= SizedBox(height: 16);
const hSection	= SizedBox(height: 32);

const wSmall 		= SizedBox(width: 8);
const wItem 		= SizedBox(width: 16);
const wLarge 		= SizedBox(width: 24);
const wSection	= SizedBox(width: 32);


const pvSmall 	= EdgeInsets.symmetric(vertical: sSmall);
const pvItem 		= EdgeInsets.symmetric(vertical: sItem);
const pvLarge 	= EdgeInsets.symmetric(vertical: sLarge);
const pvSection = EdgeInsets.symmetric(vertical: sXL);

const phSmall 	= EdgeInsets.symmetric(horizontal: sSmall);
const phItem 		= EdgeInsets.symmetric(horizontal: sItem);
const phLarge 	= EdgeInsets.symmetric(horizontal: sLarge);
const phSection = EdgeInsets.symmetric(horizontal: sXL);




class Width extends StatelessWidget {
	final double width;
	const Width(this.width, {Key? key}) : super(key: key);
	@override Widget build(BuildContext context) =>SizedBox(width: width);
}

class Height extends StatelessWidget {
	final double width;
	const Height(this.width, {Key? key}) : super(key: key);
	@override Widget build(BuildContext context) =>SizedBox(width: width);
}



