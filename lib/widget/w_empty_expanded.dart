import 'package:flutter/material.dart';

const emptyExpanded = EmptyExpanded();


class EmptyExpanded extends StatelessWidget {
  final int flex;
  const EmptyExpanded({Key? key, this.flex = 1}) : super(key: key);
  @override Widget build(BuildContext context) => Expanded(flex: flex, child: Container());
}
