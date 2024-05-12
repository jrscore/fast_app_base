class SiteFilterAggre {
	final String mng;    // 관리자 이름 또는 ID
	final int count;     // 해당 관리자의 사이트 수
	final double score;  // 평균 점수
	final int safe;      // 안전 점수 또는 사건 수

	SiteFilterAggre({
		required this.mng,
		required this.count,
		required this.score,
		required this.safe,
	});

	factory SiteFilterAggre.fromJson(Map<String, dynamic> json) {
		return SiteFilterAggre(
			mng: json['mng'],
			count: json['count'] as int,
			score: json['score'] as double,
			safe: json['safe'] as int,
		);
	}

	Map<String, dynamic> toJson() => {
			'mng': mng,
			'count': count,
			'score': score,
			'safe': safe,
		};

	static SiteFilterAggre empty() => SiteFilterAggre(
			mng: '',
			count: 0,
			score: 0.0,
			safe: 0,
		);
}
