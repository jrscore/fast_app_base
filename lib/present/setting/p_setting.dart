import 'package:coredex_pms/core/common.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
	const SettingPage({super.key});

	@override Widget build(BuildContext context) => 
	
	Scaffold(
		appBar: AppBar(title: '설정'.text.make()),
		body: ListView(
			children: [
				// switch
				// slider
				// date_time
				// number		
			],
		),
	);
}