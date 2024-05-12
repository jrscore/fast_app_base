import 'package:coredex_pms/app/constant/app_colors.dart';
import 'package:coredex_pms/widget/w_item_notify.dart';
import 'package:coredex_pms/present/notify/vo_notify.dart';
import 'package:flutter/material.dart';

// MAIN SCAFFOLD 외부
// CSV - sliver - sliverappbar, sliverlist, slivergrid, sliverBoxAdapter
class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});
  @override State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {

  @override Widget build(BuildContext context) => 

		Scaffold(
			backgroundColor: AppColors.veryDarkGrey,
			body: CustomScrollView( 
				slivers: [

					SliverAppBar(title: Text('appbar')),
					
					SliverList(
						delegate: SliverChildBuilderDelegate( 
							childCount: noti_dummys.length,
							(ctx, i) => NoticeItem(noti:noti_dummys[i], onTap: () {},),
					))	
				]
			),
		);
}