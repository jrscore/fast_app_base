import 'package:coredex_pms/app/constant/app_size.dart';
import 'package:coredex_pms/core/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//	고흥	대곡태양광	88% (64/99)		=> on 초록색, off 빨간색
class Monit {
	final String zone;
	final String alias;
	final bool 	 state;			// 인버터리스트를 확인하고 전부 true 일때 ture
	final int		 power;			// 출력비
	final int		 output;		// 출력비
	final int		 ratio;			// output*100~/power
  Monit({required this.zone, required this.alias, required this.state, required this.power, required this.output, required this.ratio});
}


class MonitItem extends StatelessWidget {
	final Monit monit;
  const MonitItem({super.key, required this.monit});

  @override Widget build(BuildContext context) => 
	Row(children: [
		Flexible(flex:2, child: monit.zone.text.make()), 		wItem,
		Flexible(flex:3, child: monit.zone.text.make()), 		wItem,
		Flexible(flex:5, child: monit.zone.text.make()), 		wItem,
	],);
}




// mixin DataProvider<T extends GetxController> on GetxController { T get controller => Get.find() }

class MonitProvider extends GetxController {

	static MonitProvider get get => Get.find();
		
	final MonitProvider repository;
	MonitProvider(this.repository);

	final mntlist  	 = <Monit>[];
	final filterlist = <Monit>[].obs;
	final zonelist 	 = ['고흥', '곡성', '주암'];
	final selected 	 = <String>[].obs;

	List<Monit> getZone(String zone) => mntlist.where((mnt) => mnt.zone == zone ).toList();

	void zoneFiltering(String zone) {
		filterlist.value = mntlist.where((mnt) => selected.isEmpty || selected.contains(mnt.zone)).toList();
	}
}