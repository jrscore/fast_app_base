// ignore_for_file: public_member_api_docs, sort_constructors_first
enum MeterType	{ G1, G2, HE, KPX }
enum CtRatio 		{ 
	R40, R80, R1 ; 
	int get num =>int.parse(name.substring(1));
}

class PacCode {
	String? 		code;
	LBS? 				lbs;
	int? 				mof;
	TR?	 				tr;
	Vcb? 				vcb;				// 
	Acb? 				acb;				// LM
	Mccb? 			mccb;
	CtRatio 		ct;
	MeterType 	meter;
	List<Inverter> inverter;
  PacCode({
    this.code,
    this.lbs,
    this.mof,
    this.vcb,
    this.acb,
    this.mccb,
    this.meter	= MeterType.G2,
    required this.ct,
    required this.inverter,
  });
}


class LBS extends Facility {}

class TR extends Facility {
	String wiring;
	int capacity;
	TR({ required this.wiring, required this.capacity});
}

class Vcb extends Facility {}
class Acb extends Facility {}

class Mccb extends Facility {
	int af, at;
	Mccb({this.af=150,this.at=150});
}

class Inverter extends Facility {
	int power;
	Inverter({required this.power});
}


class Facility {
	String manufacturer;
	String model;
	String serial;
	List<String>? images;

	Facility({
		this.manufacturer	='',
		this.model				='',
		this.serial				='',
		this.images,
	});
}