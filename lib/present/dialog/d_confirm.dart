import 'package:coredex_pms/widget/dialog/dial_center.dart';
import 'package:coredex_pms/domain/entity/simple_result.dart';
import 'package:flutter/material.dart';
import 'package:nav/dialog/dialog.dart';

import '../../core/common.dart';

class DialogConfirm extends DialogWidget<SimpleResult> {
  final String? message;
  final String buttonText;
  final String cancelButtonText;
  final bool cancelable;
  final TextAlign textAlign;
  final double fontSize;

  DialogConfirm(
    this.message, {
    super.context,
    super.key,
    String? buttonText,
    String? cancelButtonText,
    this.fontSize = 14,
    this.cancelable = true,
    this.textAlign = TextAlign.start,
  })  : buttonText = buttonText ?? 'close'.tr(),
        cancelButtonText = cancelButtonText ?? 'cancel'.tr();

  @override
  State<StatefulWidget> createState() {
    return _MessageDialogState();
  }
}

class _MessageDialogState extends DialogState<DialogConfirm> {
  var isChecked = false;

  @override
  Widget build(BuildContext context) {
    return CenterDialogScaffold(
        body: Container(
            constraints: BoxConstraints(maxHeight: context.deviceHeight),
            decoration: BoxDecoration(
                color: context.appColors.drawerBg, borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          widget.message!,
                          style: TextStyle(
                              fontSize: widget.fontSize,
                              height: 1.8,
                              color: context.appColors.text),
                          textAlign: widget.textAlign,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    )
                  ],
                ),
                HLine(color: context.appColors.divider),
                Row(
                  children: [
                    Expanded(
                      child: Tap(
                        onTap: () {
                          widget.hide(SimpleResult.failure());
                        },
                        child: Container(
                            height: 50,
                            alignment: Alignment.center,
                            child: Text(
                              widget.cancelButtonText,
                              style: TextStyle(
                                color: context.appColors.confirmText,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                              ),
                            )),
                      ),
                    ),
                    Expanded(
                      child: Tap(
                        onTap: () {
                          widget.hide(SimpleResult.success());
                        },
                        child: Container(
                            height: 50,
                            alignment: Alignment.center,
                            child: Text(
                              widget.buttonText,
                              style: TextStyle(
                                color: context.appColors.confirmText,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                              ),
                            )),
                      ),
                    ),
                  ],
                )
              ],
            )));
  }
}
