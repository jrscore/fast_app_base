import 'package:url_launcher/url_launcher.dart';



void makePhoneCall(String number) async {

	final Uri uri = Uri(scheme: 'tel',path: number);

	if (await canLaunchUrl(uri)) {
		await launchUrl(uri);
	} else {
		throw '전화걸기 실패 $uri';
	}
}

void makeSMS(String msg, String number) async {

	final uri = Uri( scheme: 'sms', path: number, queryParameters: {'body': msg} );

	if (await canLaunchUrl(uri)) {
		await launchUrl(uri);
	} else {
		throw '문자보내기 실패 $uri';
	}
}