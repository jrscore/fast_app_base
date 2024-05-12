// import 'package:coredex_pms/core/dart/ext_datetime.dart';
// import 'package:coredex_pms/domain/entity/chklist_data.dart';
// import 'package:coredex_pms/domain/entity/power_report.dart';
// import 'package:coredex_pms/data/remote/r_checkform.dart';
// import 'package:get/get.dart';


// class CheckFormController extends GetxController {
// 	final String 	sid;
// 	final lists 	= <CheckFormData>[].obs;
// 	final repo		= Get.find<CheckFormRepository>();

// 	CheckFormData? 			now;
// 	CheckFormData?			pre;
// 	YeildReport?		report;
// 	CheckFormController(this.sid);


// 	@override void onInit() async {
// 	  super.onInit();
// 		await loadList(sid);
// 	}

// 	Future<void> loadList(String sid) async {
// 		lists.assignAll( await repo.getList(sid)) ;
// 	}

// 	void createReport() {
// 		// pre.value = getPreForm();
// 		// now.value = CheckFormcopy();
// 		// report.value = YeildReport.compare(now.value, pre.value);
// 	}

// 	void addNew() async {
// 		// cloud funtion pdf생성  #.storage/checklist/sid/date
// 		// final result = await repo.addNew(now.value);
// 		// result.fold((l) => errHandler(l), (r) => r);
// 	}

// 	CheckFormData getPreForm() {
// 		if (lists.isEmpty){
// 			// CheckForm.emptyNew(site, mng, ct, invs)
// 			return lists.firstWhere((form) => form.date.isAfter(utGetPreMonth(-1)));
// 		} else {
// 			return lists.firstWhere((form) => form.date.isAfter(utGetPreMonth(-1)));
// 		}
// 	}

// }