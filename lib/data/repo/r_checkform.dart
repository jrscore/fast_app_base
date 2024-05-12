import 'package:coredex_pms/core/exceptions/exception_handler.dart';
import 'package:coredex_pms/domain/entity/chkform.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class CheckFormRepository extends GetxService with ExceptionHandler {

	static CheckFormRepository get instance => Get.find();
	final _db = FirebaseFirestore.instance;


	Future<bool> addNew(CheckFormData form) async {
		try {
			await _db.collection("chkform").add(form.toJson());
			return true;
		} catch (e) {
			return false;
		}
	}


	Future<List<CheckFormData>> getList(String sid) async {
		try {
			final qsnap = await _db .collection('chkform')
															.where('sid', isEqualTo: sid)
															.orderBy('date', descending: true)
															.limit(10)
															.get();
			return qsnap.docs.map((ds) => CheckFormData.fromSnapshot(ds)).toList();
		} catch (e) {
			rethrow;
		}
	}




}