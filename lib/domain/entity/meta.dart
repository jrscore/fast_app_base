// ignore_for_file: public_member_api_docs, sort_constructors_first



// db형태와 같아야 한다. => 변경
class SiteMeta {
	// final String corp;
	// final String type;
	// final List<String>? list;
	// final Map<String, dynamic>? data;

  // SiteMeta({
  //   required this.corp,
  //   required this.type,
  //   this.list,
  //   this.data,
  // });

	// factory SiteMeta.empty() => SiteMeta(corp: '', type: '', list: data: {});

	// factory SiteMeta.fromSnapshot(QuerySnapshot snaps) {
	// 	List<String>  lcs 		= [];
	// 	List<String>  zone 		= [];
	// 	List<String>  mng 		= [];
	// 	List<String>  alias 	= [];
	// 	List<SiteAggregation> aggre	= [];
	// 	for (var document in snaps.docs) {
	// 		var data = document.data() as Map<String, dynamic>;
	// 		switch (data['type']) {
	// 			case 'zone':		zone.add(data['value']);		break;
	// 			case 'mng':			mng.add(data['value']);			break;
	// 			case 'lcs':			lcs.add(data['value']);			break;
	// 			case 'alias':		alias.add(data['value']);		break;
	// 			//case 'aggre':	aggre.add(AggreDto.fromMap(data['value']));			break;
	// 			default:
	// 		}
	// 	}
	// 	return SiteMeta(lcs:lcs, zone:zone, mng:mng, alias:alias, aggre:aggre);
	// }

	// factory SiteMeta.fromJson(Map<String, dynamic> json) => SiteMeta(
	// 	lcs: 		List<String>.from(json['lcs']		?? []),
	// 	zone: 	List<String>.from(json['zone']	?? []),
	// 	mng: 		List<String>.from(json['mng']		?? []),
	// 	alias:	List<String>.from(json['alias'] ?? []),
	// 	aggre:	(json['aggre'] as List<dynamic>? ?? []).map((e) => SiteAggregation.fromJson(e as Map<String, dynamic>)).toList(),
		
	// );

	// // 객체를 JSON 객체로 변환
	// Map<String, dynamic> toJson() => {
	// 	'lcs': 	 lcs,
	// 	'zone':  zone,
	// 	'mng': 	 mng,
	// 	'alias': alias,
	// 	'aggre': aggre.map((e) => e.toJson()).toList(),
	// };

	// @override String toString() => 'MetaDto(lcs: $lcs, zone: $zone, mng: $mng, alias: $alias, aggre: $aggre)';

	// @override bool operator ==(Object other) {
	// 	if (identical(this, other)) return true;
	// 	return other is SiteMeta &&
	// 		other.lcs == lcs &&
	// 		other.zone == zone &&
	// 		other.mng == mng &&
	// 		other.alias == alias &&
	// 		other.aggre == aggre;
	// }

  // SiteMeta copyWith({
  //   String? corp,
  //   String? type,
  //   Map<String, dynamic>? data,
  // }) {
  //   return SiteMeta(
  //     corp: corp ?? this.corp,
  //     type: type ?? this.type,
  //     data: data ?? this.data,
  //   );
  // }

  // Map<String, dynamic> toMap() {
  //   return <String, dynamic>{
  //     'corp': corp,
  //     'type': type,
  //     'data': data,
  //   };
  // }

  // factory SiteMeta.fromMap(Map<String, dynamic> map) {
  //   return SiteMeta(
  //     corp: map['corp'] as String,
  //     type: map['type'] as String,
  //     data: Map<String, dynamic>.from((map['data'] as Map<String, dynamic>),
  //   );
  // }

  // String toJson() => json.encode(toMap());

  // factory SiteMeta.fromJson(String source) => SiteMeta.fromMap(json.decode(source) as Map<String, dynamic>);

  // @override
  // String toString() => 'SiteMeta(corp: $corp, type: $type, data: $data)';

  // @override
  // bool operator ==(covariant SiteMeta other) {
  //   if (identical(this, other)) return true;
  
  //   return 
  //     other.corp == corp &&
  //     other.type == type &&
  //     mapEquals(other.data, data);
  // }

  // @override
  // int get hashCode => corp.hashCode ^ type.hashCode ^ data.hashCode;
}
