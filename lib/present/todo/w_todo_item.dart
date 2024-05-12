import 'package:coredex_pms/core/common.dart';
import 'package:coredex_pms/core/dart/ext_datetime.dart';
import 'package:coredex_pms/widget/w_ctn_round.dart';
import 'package:coredex_pms/data/memory/todo_holder.dart';
import 'package:coredex_pms/domain/entity/todo.dart';
import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget with TodoProvider {
	final Todo todo;
  TodoItem(this.todo, {super.key});

  @override  Widget build(BuildContext context) => RoundContainer(
		Column(
			mainAxisSize: MainAxisSize.min,
			children: [
				todo.due.formattedDate.text.make(),
				Row(
					mainAxisSize: MainAxisSize.min,
					children: [
						Checkbox(value: true, onChanged: null ),
						Expanded(child: todo.title.text.size(20).medium.make()),
						IconButton(icon: Icon(Icons.edit_outlined), onPressed: (){})
					])
			]
		)
	);
}