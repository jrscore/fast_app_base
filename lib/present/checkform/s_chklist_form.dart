// import 'package:coredex_pms/common/common.dart';
// import 'package:coredex_pms/common/dart/ext_datetime.dart';
// import 'package:coredex_pms/provider/provider_checkform.dart';
// import 'package:get/get.dart';

// class CheckFormState extends GetxController {

// 	int 			ct			= 1;
// 	int 			power		= 99;
// 	double 		now			= 0;
// 	double 		last		= 0;
// 	List<int> nowInvs = [];	

// 	late double 		preNow;
// 	late double			preLast;
// 	late List<int>	preInvs;	

// 	final provider = Get.find<CheckProvider>();

// 	@override void onInit() async {
// 		super.onInit();
		
// 		final pre = await provider.getPrevious('sid_site_uniqu_id');
// 		if(pre != null ){
// 			preInvs		= pre.invs.map((e) => e.yld).toList();
// 			preNow		= pre.grid.now;
// 			preLast		= pre.grid.last;
// 		} else {
// 			preInvs		= [];
// 			preNow		= 0.0;
// 			preLast		= 0.0;
// 		}
// 	}

// 	// 전월발전량, 전월발전시간
// 	int get gridYield 				=> ((last-preLast)*ct).toInt();
// 	int get gridYieldTime			=> gridYield~/(power*daysLastMonth());

// 	// 기간한전, 기간인버터, 효율
// 	int 			get gridTermYld	=> ((last-preLast)*ct).toInt();
// 	List<int> get invTemYld		=> List.generate(nowInvs.length, (i) => nowInvs[i]-preInvs[i]);
// 	double		get eta 				=> (gridTermYld/invTemYld.sum())*100;
// }