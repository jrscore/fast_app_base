import 'package:cloud_firestore/cloud_firestore.dart';

class SiteAggregation {
	final String mng;
	final int count;
	final double score;
	final int safe;

	SiteAggregation({
		required this.mng,
		required this.count,
		required this.score,
		required this.safe,
	});

	factory SiteAggregation.empty() => SiteAggregation( mng: '', count: 0, score: 0.0, safe: 0 );

	factory SiteAggregation.fromQuerySnapshot(QueryDocumentSnapshot<Object?> doc) =>
					SiteAggregation.fromJson( doc.data() as Map<String, dynamic>? ?? {} );
	
	factory SiteAggregation.fromJson(Map<String, dynamic> json) => SiteAggregation(
		mng: 		json['mng'] 	as String,
		count:	json['count'] as int,
		score:	json['score'] as double,
		safe:		json['safe'] 	as int,
	);

	Map<String, dynamic> toJson() => {
		'mng': mng,
		'count': count,
		'score': score,
		'safe': safe,
	};

	@override int			get hashCode => mng.hashCode ^ count.hashCode ^ score.hashCode ^ safe.hashCode;
	@override String 	toString()	 => 'AggreDto(mng: $mng, count: $count, score: $score, safe: $safe)';
	@override bool		operator == (Object other) {
		if (identical(this, other)) return true;
		return other is SiteAggregation &&
			other.mng == mng &&
			other.count == count &&
			other.score == score &&
			other.safe == safe;
	}
}
