import 'package:flutter/material.dart';

class Tap extends StatelessWidget {
	final void Function()  onTap;
	final void Function()? longPress;
	final Widget child;

	const Tap({Key? key, required this.onTap, required this.child, this.longPress}) : super(key: key);

	@override Widget build(BuildContext context) => MouseRegion(
		cursor: SystemMouseCursors.click,
		child: GestureDetector(
			onTap: onTap,
			onLongPress: longPress,
			behavior: HitTestBehavior.opaque,
			child: child,
		));
}
