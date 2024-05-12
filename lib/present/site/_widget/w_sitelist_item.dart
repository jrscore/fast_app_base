import 'package:coredex_pms/app/constant/app_size.dart';
import 'package:coredex_pms/core/common.dart';
import 'package:coredex_pms/present/site/m_sitelist.dart';
import 'package:flutter/material.dart';


class SiteListItem extends StatelessWidget {
  final int i;
  final SiteModel site;
  final VoidCallback onTap; // 부모로부터 받은 콜백 함수

  const SiteListItem(this.site, this.i, {required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap, // 부모로부터 전달받은 콜백 함수를 사용
      child: Row(
        children: [
          SizedBox(width: 40, child: Text('$i').text.make()),
          site.alias.text.make(),
          site.zone.text.make(),
          emptyExpanded,
          // site.pwr!.text.color(site.getColor(context)).make(),
          site.pwr.text.make(),
        ],
      ).pSymmetric(v: sItem), // sItem 값은 외부에서 정의되어야 함
    );
  }
}
