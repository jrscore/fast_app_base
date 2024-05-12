import 'package:coredex_pms/domain/entity/grid_meter.dart';
import 'package:coredex_pms/domain/entity/inveter_meter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CheckFormData {
	final String		sid;
	final String		alias;
	final String		mng;
	final DateTime	date;
	final int				times;
	final int				ct;
	final double		power;
	GridMeter 			grid;
	List<InvMeter>	invs;

	CheckFormData({
		required this.sid,
		required this.alias,
		required this.mng,
		required this.ct,
		required this.power,
		required this.times,
		required this.date,
		required this.grid,
		required this.invs,
	});

	factory CheckFormData.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> snapshot) {
		final data = snapshot.data();
		return CheckFormData(
			sid		: data?['sid'] 								?? 	'',
			alias	: data?['alias'] 							?? 	'',
			mng		: data?['mng'] 								?? 	'',
			times	: data?['times'] 							?? 	1,
			ct		: data?['ct']?.toInt() 				?? 	1,
			power	: data?['power']?.toDouble() 	?? 	1,
			date	: (data?['date'] as Timestamp).toDate(),
			grid	: GridMeter.fromSnapshot(data?['grid']),
			invs	: (data?['invs'] as List<dynamic>?)?.map(
								(item) => InvMeter.fromSnapshot(item)).toList() ?? [],
		);
	}

	Map<String, dynamic> toJson() => {
			'sid'		: sid,
			'alias'	: alias,
			'mng'		: mng,
			'times'	: times,
			'ct'		: ct,
			'power'	: power,
			'date'	: Timestamp.fromDate(date),
			'grid'	: grid.toJson(),
			'invs'	: invs.map((inv) => inv.toJson()).toList(),
	};

	CheckFormData copy({String? mng, int? times}) => 
		CheckFormData(
			sid: 		sid,
			alias: 	alias,
			date: 	DateTime.now(),
			mng: 		mng ?? this.mng,
			times: 	times ?? this.times,
			ct: 		ct,
			power: 	power,
			grid: 	GridMeter.empty(),
			invs: 	List<InvMeter>.generate(invs.length, (_) => InvMeter.empty())
		);


	factory CheckFormData.emptyNew(String sid, String alias, String mng, int ct, double pwr, int invs) => 
		CheckFormData(
			sid: 		sid,
			alias:	alias,
			mng:		mng,
			ct: 		ct,
			power: 	pwr,
			times: 	1,
			date: 	DateTime.now(),
			grid: 	GridMeter.empty(),
			invs: 	List.generate(invs, (_) => InvMeter.empty()),
		);
}
