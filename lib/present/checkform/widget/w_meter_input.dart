import 'package:coredex_pms/app/constant/app_size.dart';
import 'package:coredex_pms/core/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GridMeterInput extends StatelessWidget {
	final String label;
	final FormFieldSetter onSave;
	final FormFieldValidator validator;
	final double size = sLarge;
  const GridMeterInput({super.key, required this.label, required this.onSave, required this.validator});

	@override 
	Widget build(BuildContext context) {
		return Column(
			children: [
				
				TextFormField(
					onSaved: onSave,
					validator: validator,
					keyboardType: TextInputType.numberWithOptions(decimal: true),
					inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d{0,2}'))],
					style: TextStyle(fontSize: size),
					decoration: InputDecoration(
						hintText: label,
						border: OutlineInputBorder(),
						contentPadding: pvSmall
					),
				),
				Row(children: [
					'전월지침: '.text.make(),
					wLarge,
					'기간발전: '.text.make(),
				])
			],
		);
	}
}

