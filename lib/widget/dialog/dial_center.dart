import 'package:coredex_pms/widget/dialog/dial_cneter_trans.dart';
import 'package:flutter/material.dart';

class CenterDialogScaffold extends StatelessWidget {
	final Widget body;

	const CenterDialogScaffold({required this.body, super.key});

	@override Widget build(BuildContext context) => 
		TransparentScaffold(
			backgroundColor: Colors.transparent,
			body: Align(
				alignment: Alignment.center,
				child: Container(
					margin:	 const EdgeInsets.symmetric(horizontal: 15),
					padding: const EdgeInsets.only(top: 20, bottom: 20, right: 15, left: 15),
					child: Column(
						mainAxisSize: MainAxisSize.min,
						mainAxisAlignment: MainAxisAlignment.end,
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [body,],
					),
				),
			),
		);
	
}
