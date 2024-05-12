import 'package:coredex_pms/core/common.dart';
import 'package:coredex_pms/domain/entity/site.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

class SiteModel {
	final String sid;
	final String alias;
	final String zone;
	final String tag;
	final String addr;
	final double pwr;
	final String pass;

	SiteModel({
		required this.sid,
		required this.alias,
		required this.zone,
		required this.tag,
		required this.addr,
		required this.pwr,
		required this.pass,
	});

	// 팩토리 생성자를 통해 도메인 엔티티에서 뷰 모델 인스턴스 생성
	factory SiteModel.fromSite(Site site) {
		return SiteModel(
			sid: 		site.sid,
			alias:	site.alias,
			zone:		site.zone,
			tag:		site.tags.join(','),
			addr:		site.addrs.isEmpty ? 'No Address' : (site.addrs[0].road.isEmpty ? site.addrs[0].lot : site.addrs[0].road),
			pwr:		site.pwr,
			pass:		site.memo.firstWhere( (map) => map.containsKey('pass'))['pass'] ?? '',
		);
	}
	

	@override
	String toString() {
		return 'SiteViewModel{sid: $sid, alias: $alias, zone: $zone, tag: $tag, addr: $addr, pwr: $pwr, pass: $pass}';
	}
}




// TODO: 사이트상태에 따라 색상을 달리 표시한다 => ready, cc, 
abstract mixin class SiteStateMixin {
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

	// checklist 횟수에따라 (times, complete)
	getProgress(BuildContext ctx)		
		=> current==lastday 
				? ctx.appColors.lessImportant 
				: current>lastday 
					? ctx.appColors.plus
					: ctx.appColors.minus;
}