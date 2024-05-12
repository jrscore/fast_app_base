import 'package:coredex_pms/app/constant/app_size.dart';
import 'package:coredex_pms/core/common.dart';
import 'package:coredex_pms/present/monit/provider_monit.dart';
import 'package:coredex_pms/widget/w_ctn_round.dart';
import 'package:flutter/material.dart';

class MonitPage extends StatelessWidget {

	final pvd  = MonitProvider.get;
	final zone = MonitProvider.get.zonelist;
	MonitPage({super.key});

	@override Widget build(BuildContext context) => 

	CustomScrollView(
		slivers: [
			
			// #1. 앱바
			SliverAppBar(
				backgroundColor: context.appColors.roundBackgroud,
				title: '지역별 모니터링'.text.make(),
			),

			// #2. chip bar
			SliverToBoxAdapter(
				child: RoundContainer(
					ListView.builder(
						shrinkWrap: true,
						itemCount: zone.length,
						scrollDirection: Axis.horizontal,
						itemBuilder: (_,i) => 
							FilterChip(
								label: zone[i].text.make(),
								onSelected: (selected) => pvd.getZone(zone[i]),
							)
					)
				),
			),

			// #3. list
			SliverToBoxAdapter(
				child: ListView.builder(
					shrinkWrap: true,
					itemCount: zone.length,
					scrollDirection: Axis.horizontal,
					itemBuilder: (_,i) => 
						ListTile(
							contentPadding: EdgeInsets.all(sSmall),
							title: MonitItem(monit: pvd.filterlist[i]),
						)
				)
			),
		],
	);
}