import 'package:after_layout/after_layout.dart';
import 'package:coredex_pms/core/common.dart';
import 'package:coredex_pms/app/constant/app_size.dart';
import 'package:coredex_pms/core/dart/ext_datetime.dart';
import 'package:coredex_pms/core/util/keyboard_util.dart';
import 'package:coredex_pms/widget/dialog/dial_bottom.dart';
import 'package:coredex_pms/widget/w_btn_round.dart';
import 'package:coredex_pms/widget/w_ctn_round.dart';
import 'package:coredex_pms/present/todo/vm_todo.dart';
import 'package:flutter/material.dart';
import 'package:nav/dialog/dialog.dart';

import '../../domain/entity/todo.dart';


class TodoDialog extends DialogWidget<WriteTodoResult> {
	final Todo? todo;
  TodoDialog({this.todo, super.key});
	@override DialogState<TodoDialog> createState() => _WriteTodoDialogState();
}


// AfterLayout -> 키보드바로생성

class _WriteTodoDialogState extends DialogState<TodoDialog> with AfterLayoutMixin {
	var   selectedDate = DateTime.now();
	final txtcontrol = TextEditingController();
	final node = FocusNode();

	@override
	Widget build(BuildContext context) => 
		BottomDialogScaffold(
			body: RoundContainer(
				Column(children: [

					Row(children: [
						'할일을 작성해 주세요'.text.bold.size(16).make(),
						Spacer(),
						selectedDate.formattedDate.text.make(),
						IconButton( icon: Icon(Icons.calendar_month), onPressed: _datePicker,)
						]),

					hSection,

					Row(children: [
						Expanded(child: TextField(focusNode: node, controller: txtcontrol) ),
						RoundButtonComplex(text: '추가', onTap: _createNew)
						]
					)
				])
			)
		);

	// AfterLayoutMixin => 화면 렌더링후 바로 키보드 생성
	@override FutureOr<void> afterFirstLayout(BuildContext context) {
		KeyboardUtil.show(context, node);
	}

	void _datePicker() async => await showDatePicker(
		context: context, 
		firstDate: selectedDate.subtract(const Duration(days: 365)), 
		lastDate: selectedDate.add(const Duration(days: 365))
	);

	void _createNew() => widget.hide( WriteTodoResult(selectedDate, txtcontrol.text) );
}