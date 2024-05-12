import 'package:coredex_pms/core/util/validator.dart';
import 'package:coredex_pms/present/camera/v_camera.dart';
import 'package:coredex_pms/present/checkform/c_chkform.dart';
import 'package:coredex_pms/present/checkform/widget/f_power_report.dart';
import 'package:coredex_pms/present/checkform/widget/w_invert_input.dart';
import 'package:coredex_pms/present/checkform/widget/w_meter_input.dart';
import 'package:coredex_pms/present/site/m_sitelist.dart';
import 'package:coredex_pms/widget/w_ctn_column.dart';
import 'package:coredex_pms/widget/w_scroll_column.dart';
import 'package:coredex_pms/widget/w_textfield_number.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CheckFormPage extends StatelessWidget {
	final bool isfirst;
	final SiteModel site;
  const CheckFormPage({super.key, required this.site, required this.isfirst});

	
	@override Widget build(BuildContext context) {

		final con 		= Get.put(CheckFormController(isfirst: isfirst));
		final formkey	= GlobalKey<FormState>();
		final ctcon		= TextEditingController();
		final invcon	= TextEditingController();

		return Scaffold(
			appBar: AppBar(title: Text('점검표 작성')),
			floatingActionButton: FloatingActionButton(onPressed: ()=>Get.to(CameraViewer()), child: Icon(Icons.camera)),
			
			body: 
			ScrollableColumn(children: [

				isfirst 
					? Row(children: [
						NumberInputField(label:'CT 비를 입력해주세요', 	controller: ctcon,   onValueChanged: (val)=> con.initCt(int.parse(val))),
						NumberInputField(label:'인버터수를 입력해주세요',	controller: invcon, onValueChanged: (val)=> con.initInv(int.parse(val))),
					])
					: SizedBox.shrink(),

				Form(
					key: formkey,
					child: RColumContainer(children: [
						GridMeterInput(
							label: "현재지침", 
							validator: (val) => Validator.gridMeter(val, con.pregrid?.last ?? 0.0 ), 	
							onSave:		 (val) => con.nowgrid.now = val
						),
						GridMeterInput(
							label: "전월누적", 
							validator: (val) => Validator.gridMeter(val, con.pregrid?.last ?? 0.0 ),	
							onSave: 	 (val) => con.nowgrid.last = val
						),
						Divider(),

						Obx(() => ListView.builder(
							itemCount: con.inv.value,
							itemBuilder: (_, i) => 
								InvMeterInput(
									validator:(v) => Validator.invMeter(int.parse(v!), con.preinvs?[i].yld ?? 0),
									savePwr: 	(v) => con.nowinvs[i].pwr = double.parse(v!),
									saveDay: 	(v) => con.nowinvs[i].day = int.parse(v!),
									daveYld: 	(v) => con.nowinvs[i].yld = int.parse(v!),
								)
						))
					])
				),
				ElevatedButton(
					onPressed: () {
						if (formkey.currentState!.validate()) {
							formkey.currentState!.save();
							Get.bottomSheet(YeildReportFrag());
						} else {
							Get.snackbar('', '발전량을 확인하세요');
						}
					},
					child: Text('발전량 확인'),
				),

				// TODO:생성해야됨.
				// PhotoGridViewer(con: camera),
			])
		);
	}


}


