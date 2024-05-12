import 'package:coredex_pms/present/checkform/c_chkform_list.dart';
import 'package:get/get.dart';
import 'package:coredex_pms/domain/entity/chkform.dart';
import 'package:coredex_pms/domain/entity/grid_meter.dart';
import 'package:coredex_pms/domain/entity/inveter_meter.dart';
import 'package:coredex_pms/present/site/c_sitelist.dart';

class CheckFormController extends GetxController {
	final bool isfirst;
	final ct  = 0.obs;
	final inv = 0.obs;
	final nowgrid = GridMeter.empty();
	final nowinvs = <InvMeter>[].obs;
	GridMeter? 			pregrid;
	List<InvMeter>?	preinvs;

  CheckFormController({ required this.isfirst });
	
	
	@override void onInit() async {
	  super.onInit();
		final con = Get.find<CheckFormListController>();
		if(!isfirst) pregrid = con.list.last.grid;
		if(!isfirst) preinvs = con.list.last.invs;
	}

	CheckFormData? getPreForm() {
		// return list.isNotEmpty ? list.singleWhere((form) => form.date.isAfter(utGetPreMonth(-1))) : null;
	}

	// 새 폼 생성
	void createNewForm(String sid, String mng ) {
		final con	 = Get.find<SiteController>();
		final site = con.getSite(sid);
		final form = CheckFormData(
			sid: 		sid, 
			alias: 	site.alias, 
			mng: 		mng, 
			ct:			ct.value, 
			power:	site.pwr, 
			times:	1, 
			date: 	DateTime.now(), 
			grid: 	nowgrid, 
			invs: 	nowinvs
		);
	}

  void initCt (int val) => ct.value  = val;
  void initInv(int val) {
		inv.value = val;
		for(int i=0; i<val; i++){
			nowinvs.add(InvMeter.empty());
		}
	}

	// CheckFormData initNewform(String sid, String mng, int ct, int invs) {
	// 	final site = sitecon.getSite(sid);
	// 	return CheckFormData.emptyNew(sid, site.alias, mng, ct, site.pwr, invs);
	// }


	// CheckFormData? getPreForm() {
	// 	return list.isNotEmpty ? list.singleWhere((form) => form.date.isAfter(utGetPreMonth(-1))) : null;
	// }

	// void createReport() {
	// 	// pre.value = getPreForm();
	// 	// now.value = CheckFormcopy();
	// 	// report.value = YeildReport.compare(now.value, pre.value);
	// }

	// void addNew() async {
	// 	// cloud funtion pdf생성  #.storage/checklist/sid/date
	// 	// final result = await repo.addNew(now.value);
	// 	// result.fold((l) => errHandler(l), (r) => r);
	// }
}
