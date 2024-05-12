import 'package:cloud_firestore/cloud_firestore.dart';

class InvMeter with InverterDifferential {
	double pwr;
	int 	day;
	int 	yld;

	InvMeter({
		required this.pwr,
		required this.day,
		required this.yld,
	});

	factory InvMeter.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> snapshot ) {
		final data = snapshot.data();
		return InvMeter(
			pwr: 	 	data?['pwr']?.toDouble()	?? 0.0,
			day: 	 	data?['day']?.toInt()			?? 0,
			yld: 		data?['yld']?.toInt()			?? 0,
		);
	}

	Map<String, dynamic> toJson() => {
			'pwr': pwr,
			'day': day,
			'yld': yld,
		};

	static InvMeter empty() => InvMeter(pwr: 0.0,day: 0,yld: 0);
}

mixin class InverterDifferential {
	int getTermYeild(InvMeter pre, InvMeter now)	=> (pre.yld - now.yld);
}