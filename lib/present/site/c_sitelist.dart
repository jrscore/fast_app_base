import 'package:coredex_pms/core/common.dart';
import 'package:coredex_pms/domain/uc_site.dart';
import 'package:coredex_pms/present/site/m_sitelist.dart';
import 'package:get/get.dart';



class SiteController extends GetxController {
	final GetListByManager getListByManager;

	var sitelist 		= <SiteModel>[].obs;
	var filterlist	= <SiteModel>[].obs;
	var zonelist		= <String>[].obs;

	SiteController(this.getListByManager);

	@override
	void onInit() async {
		super.onInit();
		await loadSite('muan', '최낙훈');
	}

	Future<void> loadSite(String corp, String mng) async {
		sitelist.value = await getListByManager.execute(corp, mng);
		zonelist.value = sitelist.map((site) => site.zone).toSet().toList();
	}

	void filterSearch(String keyword) {
		filterlist.value = keyword.isEmpty ? [] : sitelist.where((it) => it.zone.contains(keyword)).toList();
	}

	SiteModel getSite(String sid) {
		try {
			return sitelist.singleWhere((site) => site.sid == sid);
		} catch (e) {
			throw Exception('Site with SID $sid not found');
		}
	}
}