import 'package:coredex_pms/data/repo/r_meta.dart';
import 'package:get/get.dart';

// UI상태를 가진다
// service or repository에서 fetch실행
// Dom 객체를 변환 VM을 hold

// final List<SiteAggregation> aggre;
class MetaProvider extends GetxService {
	final zone			= <String>[].obs;
	final lcs				= <String>[].obs;
	final mng				= <String>[].obs;
	final alias			= RxList<Map<String, dynamic>>();

	final metaRepo 	= Get.find<MetaRepository>();

	@override void onInit() {
		loadList();
		super.onInit();
	}

	void loadList() async {

		final snaps = await metaRepo.getMetaData('muan');
		for (var doc in snaps) {
			var data = doc.data() as Map<String, dynamic>;
			switch (data['type']) {
				case 'zone':	zone.addAll(List<String>.from(data['data']));									break;
				case 'lcs':		lcs.addAll(List<String>.from(data['data']));									break;
				case 'mng':		mng.addAll(List<String>.from(data['data']));									break;
				case 'alias':	alias.addAll(List<Map<String, dynamic>>.from(data['data']));	break;
				default:																																		break;
			}
    }
	}
}