import 'package:coredex_pms/core/common.dart';
import 'package:coredex_pms/widget/w_ctn_round.dart';
import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
	final String title;
	final VoidCallback cb;
  const BigButton(this.title, {required this.cb, super.key, });

  @override Widget build(BuildContext context) => 
		Tap(
			onTap: cb,
			child: RoundContainer(
				Row(children: [
					title.text.size(20).white.bold.make(),
					emptyExpanded,
					// Arrow()
				]),
			),
		);
}