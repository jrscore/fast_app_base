import 'package:coredex_pms/core/common.dart';
import 'package:coredex_pms/core/dart/ext_color.dart';
import 'package:coredex_pms/present/todo/w_todo_list.dart';
import 'package:flutter/material.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override Widget build(BuildContext context) => 
		Container(
			color: context.appColors.seedColor.getSwatchByBrightness(100),
			child: Column( children: [
				IconButton(onPressed: ()=>Scaffold.of(context).openDrawer(), icon: Icon(Icons.menu_outlined)),
				Expanded(child: TodoList().pSymmetric(h: 16 ))
			])
	);
}