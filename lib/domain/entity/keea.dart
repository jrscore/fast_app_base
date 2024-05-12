import 'package:cloud_firestore/cloud_firestore.dart';

class Keea {
  final String code;
  final String pac;
  final String bname;
  final String addr;
  final String owner;
  final String phone;
  final String score;
  final String lcs;
  final String regdate;

  Keea({
    required this.code,
    required this.pac,
    required this.bname,
    required this.addr,
    required this.owner,
    required this.phone,
    required this.score,
    required this.lcs,
    required this.regdate,
  });

  factory Keea.fromJson(Map<String, dynamic> json) {
    return Keea(
      code: 	json['code'],
      pac: 		json['pac'],
      bname: 	json['bname'],
      addr: 	json['addr'],
      owner: 	json['owner'],
      phone: 	json['phone'],
      score: 	json['score'],
      lcs: 		json['lcs'],
      regdate:json['regdate'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'pac': pac,
      'bname': bname,
      'addr': addr,
      'owner': owner,
      'phone': phone,
      'score': score,
      'lcs': lcs,
      'regdate': regdate,
    };
  }

  static Keea empty() {
    return Keea(
      code: 	'',
      pac: 		'',
      bname: 	'',
      addr: 	'',
      owner: 	'',
      phone: 	'',
      score: 	'',
      lcs: 		'',
      regdate:'',
    );
  }

  factory Keea.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> doc) {
    final data = doc.data();
    return data != null ? Keea.fromJson(data) : Keea.empty();
  }
}
