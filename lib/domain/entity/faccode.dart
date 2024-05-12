class FacCode {
  final String brn;             // Business Registration Number
  final String regDate;         // Registration Date
  final List<String> bsnReg;    // Business Registration Certificates
  final List<String> pptReg;    // Power Plant Registration Certificates
  final List<String> keskoDoc;  // Pre-use documents from KESKO
  final List<String> kepcoDoc;  // Pre-use documents from KEPCO

  FacCode({
    required this.brn,
    required this.regDate,
    required this.bsnReg,
    required this.pptReg,
    required this.keskoDoc,
    required this.kepcoDoc,
  });

  factory FacCode.fromJson(Map<String, dynamic> json) {
    return FacCode(
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
