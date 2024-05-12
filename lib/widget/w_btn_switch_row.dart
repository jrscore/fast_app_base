// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coredex_pms/core/common.dart';
import 'package:flutter/cupertino.dart';

class SwitchRowButton extends StatelessWidget {
	final String	title;
	final bool 		pushed;
	final ValueChanged ontap;

  const SwitchRowButton(this.title, this.pushed, {Key? key, required this.ontap}) : super(key: key);

  @override Widget build(BuildContext context) {
    return Row(
			children: [
				title.text.bold.make(),
				emptyExpanded,
				CupertinoSwitch(value: pushed, onChanged: ontap)
			],
		).p20();
  }
}
