
import 'package:coredex_pms/core/exceptions/exception_handler.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class MetaRepository extends GetxService with ExceptionHandler {

	static MetaRepository get instance => Get.find();
	final _db = FirebaseFirestore.instance;


	Future<List<DocumentSnapshot<Map<String,dynamic>>>> getMetaData(String corp) async {
		final snaps = await _db.collection('site_meta').where('corp', isEqualTo: corp).get();
		return snaps.docs;
	}
}

