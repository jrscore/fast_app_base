
import 'package:coredex_pms/core/common.dart';
import 'package:coredex_pms/app/constant/app_size.dart';
import 'package:coredex_pms/present/notify/vo_notify.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class NotifyItem extends StatelessWidget {

	final NotifyVM noti;
  const NotifyItem({super.key, required this.noti});

	@override Widget build(BuildContext context) => 
	Container(
		padding: const EdgeInsetsDirectional.symmetric(vertical: 16),
		color: noti.isRead ? context.backgroundColor : context.appColors.unreadColor,
		child: Column(
			children: [
				noti.type.icon,
				wItem,
				noti.type.title.text.color(context.appColors.unreadColor).size(12).make(),
				emptyExpanded,
				timeago.format(noti.date, locale: context.locale.languageCode).text.make(),
			],
		),
	);
}