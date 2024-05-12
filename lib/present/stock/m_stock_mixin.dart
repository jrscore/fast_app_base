
import 'package:coredex_pms/core/common.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';


// 필드값을 가질수있게 추상화 시킨다
// late -> getter를 설정
abstract mixin class StockMixinProvider {

	int get current;
	int get lastday;

	String get _symbol 	=> current==lastday ? '' : current>lastday ? '+':'-';
	double get _percent => ((current-lastday)/lastday*100).toPrecision(2);
	String get percent 	=> '$_symbol $_percent%';

	getColor(BuildContext ctx)		
		=> current==lastday 
				? ctx.appColors.lessImportant 
				: current>lastday 
					? ctx.appColors.plus
					: ctx.appColors.minus;
}