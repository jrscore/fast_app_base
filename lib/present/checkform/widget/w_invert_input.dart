import 'package:coredex_pms/app/constant/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InvMeterInput extends StatelessWidget {
  final FormFieldSetter<String> savePwr;
  final FormFieldSetter<String> saveDay;
  final FormFieldSetter<String> daveYld;
  final FormFieldValidator<String> validator;
  final double size = sLarge;

  const InvMeterInput({
    super.key, 
    required this.savePwr,
    required this.saveDay,
    required this.daveYld,
    required this.validator
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: TextFormField(
            onSaved: savePwr,
            validator: validator,
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d{0,1}'))],
            decoration: InputDecoration(
              hintText: '현재',
              border: OutlineInputBorder(),
              contentPadding: pvSmall
            ),
            style: TextStyle(fontSize: size),
          ),
        ),
        wSmall,
        Expanded(
          flex: 2,
          child: TextFormField(
            onSaved: saveDay,
            validator: validator,
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^\d*'))],
            decoration: InputDecoration(
              hintText: '금일',
              border: OutlineInputBorder(),
              contentPadding: pvSmall
            ),
            style: TextStyle(fontSize: size),
          ),
        ),
        wSmall,
        Expanded(
          flex: 3,
          child: TextFormField(
            onSaved: daveYld,
            validator: validator,
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d{0}'))],
            decoration: InputDecoration(
              hintText: '누적',
              border: OutlineInputBorder(),
              contentPadding: pvSmall
            ),
            style: TextStyle(fontSize: size),
          ),
        ),
      ],
    );
  }
}
