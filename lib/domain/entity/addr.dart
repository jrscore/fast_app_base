enum AddressType { keea, represent, entrance }

class Address {
	final AddressType type; // 주소 유형
	final String road; // 도로명 주소
	final String lot; // 지번 주소
	final double lat; // 위도
	final double lng; // 경도

	const Address({
		required this.type,
		required this.road,
		required this.lot,
		required this.lat,
		required this.lng,
	});

	// 팩토리 생성자를 통한 JSON에서 엔티티 생성
	factory Address.fromJson(Map<String, dynamic> json) {
		return Address(
			type: AddressType.values[json['type'] as int],
			road: json['road'] as String,
			lot: json['lot'] as String,
			lat: json['lat'] as double,
			lng: json['lng'] as double,
		);
	}

	// 엔티티를 JSON으로 변환
	Map<String, dynamic> toJson() {
		return {
			'type': type.index,
			'road': road,
			'lot': lot,
			'lat': lat,
			'lng': lng,
		};
	}

	// 주소 정보 업데이트를 위한 메서드
	Address updateAddress({
		String? road,
		String? lot,
		double? lat,
		double? lng,
	}) => 
		Address(
			type: type, // 유형불변
			road: road	?? this.road,
			lot: 	lot		?? this.lot,
			lat: 	lat		?? this.lat,
			lng: 	lng		?? this.lng,
		);
}