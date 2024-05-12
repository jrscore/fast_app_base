// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coredex_pms/app/constant/app_size.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'package:coredex_pms/core/common.dart';
import 'package:coredex_pms/present/notify/vo_notify.dart';

class NoticeItem extends StatefulWidget {
	static const leftPadding = 16.0;
	static const iconSize = 25.0;

	final NotifyVM noti;
	final VoidCallback onTap;
  const NoticeItem({Key? key,required this.noti,required this.onTap}) : super(key: key);

  @override State<NoticeItem> createState() => _NoticeItemState();
}

class _NoticeItemState extends State<NoticeItem> {
  @override Widget build(BuildContext context) => Material(
		child: Tap(
			onTap: widget.onTap,
			child: Container(
			padding: EdgeInsets.symmetric(vertical: 8),
			color: widget.noti.isRead ? context.backgroundColor : context.appColors.unreadColor,
					child: Column(
						mainAxisSize: MainAxisSize.min,
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
		
							Row(children: [
								const Width(NoticeItem.leftPadding),
								widget.noti.type.icon,
								wSmall,
								widget.noti.type.title.text.make(),
								emptyExpanded,
								timeago.format(widget.noti.date, locale:'ko').text.make(),
								wItem
							]),
		
							widget.noti.desc.text.make().pOnly(left: NoticeItem.iconSize + NoticeItem.leftPadding)
						]
					),
				),
			),
	);
}