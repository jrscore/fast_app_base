import 'package:get/get.dart';

import 'package:coredex_pms/data/repo/r_checkform.dart';
import 'package:coredex_pms/domain/entity/chkform.dart';

class CheckFormListController extends GetxController {
	final String sid;
	final repo = CheckFormRepository.instance;

	final list = <CheckFormData>[].obs;

	CheckFormListController(this.sid);

	@override void onInit() async {
	  super.onInit();
		await loadList(sid);
	}

	Future<void> loadList(String sid) async {
		final list = await repo.getList(sid);
		list.assignAll(list) ;
	}
}