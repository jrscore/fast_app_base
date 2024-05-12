import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NumberInputField extends StatelessWidget {
	final TextEditingController controller;
	final String label;
	final Function(String) onValueChanged;

	const NumberInputField({
		Key? key,
		required this.label,
		required this.controller,
		required this.onValueChanged,
	}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return TextField(
			controller: controller,
			keyboardType: TextInputType.number,
			inputFormatters: [FilteringTextInputFormatter.digitsOnly], // 숫자만 입력 허용
			decoration: InputDecoration(
				labelText: label,
				border: OutlineInputBorder(),
				errorText: _validateNumber(controller.text) ? null : '숫자만 입려가능합니다',
			),
			onChanged: (value) {
				if (_validateNumber(value)) {
					onValueChanged(value);
				}
			},
		);
	}

	bool _validateNumber(String value) {
		return value.isNotEmpty && int.tryParse(value) != null;
	}
}
