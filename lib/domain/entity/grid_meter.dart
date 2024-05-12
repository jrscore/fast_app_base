import 'package:cloud_firestore/cloud_firestore.dart';

class GridMeter with MeterDifferential {
	double now;
	double last;
	double? nowReverse;
	double? preReverse;

	GridMeter({
		required this.now,
		required this.last,
		this.nowReverse,
		this.preReverse,
	});

	factory GridMeter.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> snapshot ) {
		final json = snapshot.data();
		return GridMeter(
			now: 				json?['now']?.toDouble() ?? 0.0,
			last: 			json?['last']?.toDouble() ?? 0.0,
			nowReverse: json?['nowReverse']?.toDouble(),
			preReverse: json?['preReverse']?.toDouble(),
		);
	}

	Map<String, dynamic> toJson() => {
			'now': now,
			'last': last,
			if (nowReverse != null) 'nowReverse': nowReverse,
			if (preReverse != null) 'preReverse': preReverse,
	};

	static GridMeter empty() =>
		GridMeter(
			now: 0.0,
			last: 0.0,
			nowReverse: null,
			preReverse: null,
		);
	
}


mixin class MeterDifferential {
	double getMonthYeild(GridMeter pre, GridMeter now)	=> (pre.last - now.last);
	double getTermYeild (GridMeter now) 								=> (now.last - now.now);
}
