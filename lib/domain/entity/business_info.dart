class BusinessRegInfo {
  final String brn;          // 등록번호
  final String regDate;      // 사업자등록일
  final List<String> bsnReg; // 사업자등록증
  final List<String> pptReg; // 발전사업등록증
  final List<String> keskoDoc; // 사용전
  final List<String> kepcoDoc; // 사용전

  BusinessRegInfo({
    required this.brn,
    required this.regDate,
    required this.bsnReg,
    required this.pptReg,
    required this.keskoDoc,
    required this.kepcoDoc,
  });

  factory BusinessRegInfo.fromJson(Map<String, dynamic> json) {
    return BusinessRegInfo(
      brn: json['brn'],
      regDate: json['reg_date'],
      bsnReg: List<String>.from(json['bsn_reg']),
      pptReg: List<String>.from(json['ppt_reg']),
      keskoDoc: List<String>.from(json['kesko_doc']),
      kepcoDoc: List<String>.from(json['kepco_doc']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'brn': brn,
      'reg_date': regDate,
      'bsn_reg': bsnReg,
      'ppt_reg': pptReg,
      'kesko_doc': keskoDoc,
      'kepco_doc': kepcoDoc,
    };
  }
}
