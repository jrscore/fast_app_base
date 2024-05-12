import 'package:coredex_pms/core/common.dart';
import 'package:flutter/material.dart';

class FormDivider extends StatelessWidget {
	const FormDivider({super.key, required this.text});

	final String text;

	@override Widget build(BuildContext context) {
		final dark = context.isDarkMode;
		return Row(
			mainAxisAlignment: MainAxisAlignment.center,
			children: [
				Flexible(child: Divider(color: dark ? context.appColors.divider : context.appColors.veryBrightGrey, thickness: 0.5, indent: 60, endIndent: 5)),
				Text(text, style: Theme.of(context).textTheme.labelMedium),
				Flexible(child: Divider(color: dark ? context.appColors.divider : context.appColors.veryBrightGrey, thickness: 0.5, indent: 5, endIndent: 60)),
			],
		);
	}
}
