class Invoice {
  final String	brn;			// 사업자 등록 번호
  final String	email;		// 이메일 주소
  final String	payment;	// 결제 방법: 카드, 은행, 현금
  final String	bank;			// 은행 이름
  final String	bkno;			// 은행 계좌 번호
  final String	term;			// 결제 기간
  final int			gross;  	// 총액
  final int			net;    	// 순수익
  final int			mro;    	// 유지 보수 비용
  final int			fnc;    	// 재정 비용
  final int			safe;   	// 안전 관리 비용

  Invoice({
    required this.brn,
    required this.email,
    required this.payment,
    required this.bank,
    required this.bkno,
    required this.term,
    required this.gross,
    required this.net,
    required this.mro,
    required this.fnc,
    required this.safe,
  });

  factory Invoice.fromJson(Map<String, dynamic> json) => Invoice(
      brn: 			json['brn'],
      email:		json['email'],
      payment:	json['bilge'],
      bank:			json['bank'],
      bkno:			json['bkno'],
      term:			json['term'],
      gross:		json['gross'] as int,
      net:			json['net'] 	as int,
      mro:			json['mro'] 	as int,
      fnc:			json['fnc'] 	as int,
      safe:			json['safe']  as int,
    );

  Map<String, dynamic> toJson() => {
      'brn': brn,
      'email': email,
      'bilge': payment,
      'bank': bank,
      'bkno': bkno,
      'term': term,
      'gross': gross,
      'net': net,
      'mro': mro,
      'fnc': fnc,
      'safe': safe,
    };

  static Invoice empty() => Invoice(
      brn: '',
      email: '',
      payment: '',
      bank: '',
      bkno: '',
      term: '',
      gross: 	0,
      net: 		0,
      mro: 		0,
      fnc: 		0,
      safe: 	0,
    );
}