import 'package:coredex_pms/present/monit/provider_monit.dart';
import 'package:flutter/material.dart';

class MonitFaultList extends StatelessWidget {
	final provider = MonitProvider.get;
	MonitFaultList({super.key});

	@override Widget build(BuildContext context) {
		final faultlist = provider.mntlist.where( (mnt) => mnt.state==false ).toList();
		return ListView.builder(
			itemCount: faultlist.length,
			itemBuilder: (_,i)=>MonitItem(monit: faultlist[i])
		);
	}
}