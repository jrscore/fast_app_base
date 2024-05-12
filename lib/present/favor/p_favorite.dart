import 'package:coredex_pms/core/common.dart';
import 'package:flutter/material.dart';

import '../../widget/w_btn_theme.dart';
import '../../widget/w_btn_round.dart';

class FavoritePage extends StatelessWidget {
  final bool isShowBackButton;

  const FavoritePage({Key? key, this.isShowBackButton = true}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Material(
			child: SafeArea(
				bottom: false,
				child: Column(
					mainAxisSize: MainAxisSize.min,
					crossAxisAlignment: CrossAxisAlignment.start,
					children: [
						if (isShowBackButton) const BackButton(),
						Expanded(
							child: Container(
								color: Colors.green.withOpacity(0.2),
								child: Column(
									crossAxisAlignment: CrossAxisAlignment.center,
									mainAxisAlignment: MainAxisAlignment.center,
									children: [
										const Row(),
										RoundButtonComplex(
											text: '즐겨찾기 화면 띄우기',
											onTap: () => Nav.push(const FavoritePage(isShowBackButton: true), context: context),
											theme: RoundButtonTheme.blue,
										),
									]),
							),
						)
					],
				),
			),
		);
	}
}
