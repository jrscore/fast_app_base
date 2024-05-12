
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coredex_pms/domain/entity/addr.dart';
import 'package:coredex_pms/domain/entity/bill_info.dart';
import 'package:coredex_pms/domain/entity/keea.dart';



// extension ToViewModel on Site {
//   SiteViewModel toVModel() => SiteViewModel(
// 		sid: 		sid,
// 		alias: 	alias,
// 		zone:		zone,
// 		tag:		tags,
// 		addr: 	addrs.map ?? '',
// 		pwr:		pwr,
// 		pass:		pass ?? '',
//   );
// }


class Site {
	final String 	sid;
	final String 	code;
	final String 	corp;
	final String 	state;				// Active, Halt, Ready, Off
	final String 	type;					// safe, ext, service, mro
	final DateTime 	regdate;		// 등록일
	final DateTime? expdate;		// 종료일
	final String 	mng;
	final String 	zone;
	final String 	alias;
	final String 	lcs;
	final double 	pwr;
	final double 	score;
	final Keea		keea;
	final Invoice bill;
	final String? fac;
	final List<String> tags;
	final List<String> mro;
	final List<Address> addrs;
	final List<Map<String, String>> memo;

	Site({
		required this.sid,
		required this.code,
		required this.corp,
		required this.state,
		required this.type,
		required this.regdate,
		required this.mng,
		required this.zone,
		required this.alias,
		required this.lcs,
		required this.pwr,
		required this.score,
		required this.keea,
		required this.bill,
		required this.tags,
		required this.mro,
		required this.addrs,
		required this.memo,
		this.expdate,
		this.fac
	});

	factory Site.empty() => Site(
		sid: 			'',
		code: 		'',
		corp: 		'',
		state:		'ready',
		type: 		'safe',
		regdate: 	DateTime.now(),
		mng: 			'',
		zone: 		'',
		alias: 		'',
		lcs: 			'',
		pwr: 			0.0,
		score: 		0.0,
		keea: 		Keea.empty(),
		bill: 		Invoice.empty(),
		fac: 			null,
		tags: 		[],
		mro: 			[],
		addrs: 		[],
		memo: 		[],
	);

	factory Site.fromSnapshot(QueryDocumentSnapshot<Object?> ds) {
		return Site.fromJson(ds.data() as Map<String, dynamic>? ?? {}, ds.id);
	}

	factory Site.fromJson(Map<String, dynamic> json, String docid) {
		return Site(
			sid:		docid,
			code: 	json['code'] as String,
			corp: 	json['corp'] as String,
			state: 	json['state'] as String,
			type: 	json['type'] as String,
			regdate:json['regdate'] as DateTime,
			mng: 		json['mng'] as String,
			zone: 	json['zone'] as String,
			alias:	json['alias'] as String,
			lcs:		json['lcs'] as String,
			pwr:		json['pwr'] as double,
			score:	json['score'] as double,
			keea: 	Keea.fromJson(json['keea']),
			bill: 	Invoice.fromJson(json['bill']),
			fac:		json['fac'] as String?,
			tags: 	List<String>.from(json['tags']),
			mro: 		List<String>.from(json['mro']),
			addrs: 	List<Address>.from(json['addrs'].map((x) => Address.fromJson(x))),
			memo: 	List<Map<String, String>>.from(json['memo'].map((x) => Map<String, String>.from(x))),
		);
	}

	Map<String, dynamic> toJson() {
		return {
			'sid': 		sid,
			'code': 	code,
			'corp': 	corp,
			'state': 	state,
			'type':		type,
			'mng': 		mng,
			'regdate':regdate,
			'zone': 	zone,
			'alias': 	alias,
			'lcs': 		lcs,
			'pwr': 		pwr,
			'score': 	score,
			'keea': 	keea.toJson(),
			'bill': 	bill.toJson(),
			'fac': 		fac,
			'tags': 	tags,
			'mro': 		mro,
			'addrs': 	addrs.map((x) => x.toJson()).toList(),
			'memo': 	memo.map((x) => Map.from(x)).toList(),
		};
	}
}
