import 'package:coredex_pms/core/common.dart';
import 'package:coredex_pms/core/prefs/app_prefs.dart';
import 'package:coredex_pms/data/memory/todo_holder.dart';
import 'package:coredex_pms/present/todo/w_todo_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TodoList extends StatelessWidget with TodoProvider {
  TodoList({super.key});

  @override
  Widget build(BuildContext context) => 
		Obx(() => 
			todoData.todolist.isEmpty 
				? '할일을 작성하세요'.text.size(30).makeCentered()
				: Column(
						mainAxisSize: MainAxisSize.min,
						children: todoData.todolist.map((todo) => TodoItem(todo)).toList()
					)
		);
}