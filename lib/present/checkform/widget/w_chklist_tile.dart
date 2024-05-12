import 'package:coredex_pms/app/constant/app_size.dart';
import 'package:coredex_pms/core/common.dart';
import 'package:coredex_pms/core/util/formmatter.dart';
import 'package:flutter/material.dart';

class CheckListTile extends StatelessWidget {
	final String		times;
	final DateTime	date;
	final String		mng;
	final VoidCallback ontap;

	const CheckListTile({
		super.key,
		required this.times,
		required this.date,
		required this.mng,
		required this.ontap,
	});

	@override
	Widget build(BuildContext context) => Row(
		children: [
			wSmall,
			Flexible(flex: 1,	child: Text(times)),													wSmall,
			Flexible(flex: 2,	child: Text(Formatter.formatDate(date))	),		wSmall,
			Flexible(flex: 2,	child: Text(mng)	),		
			emptyExpanded,
			IconButton(icon: Icon(Icons.visibility), onPressed: ontap),
			wSmall,
		],
	);
}
