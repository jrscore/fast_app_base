import 'package:coredex_pms/core/platform/phone_sms.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';


// TODO: 앱바 반투명 백버튼, SMS, CALL
class PdfViewerPage extends StatelessWidget {
  const PdfViewerPage({super.key});

  @override Widget build(BuildContext context) =>
	Scaffold(
		appBar: AppBar(
			backgroundColor: Colors.transparent,
			elevation: 0,
			leading: IconButton(onPressed: () => Get.back(),icon: Icon(Icons.arrow_back, color: Colors.black) ),
			actions: [
				IconButton(onPressed: ()=>makePhoneCall('01031399645'), icon: Icon(Icons.phone)),
				IconButton(onPressed: ()=>makeSMS('msg','01031399645'), icon: Icon(Icons.sms)),
			],
			iconTheme: IconThemeData(color: Colors.white),
		),
		extendBodyBehindAppBar: true,

		
		body: SfPdfViewer.network('https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf'),
	);
}