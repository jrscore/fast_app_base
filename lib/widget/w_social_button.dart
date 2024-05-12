import 'package:coredex_pms/app/constant/app_colors.dart';
import 'package:coredex_pms/app/constant/app_size.dart';
import 'package:flutter/material.dart';


class SocialButton extends StatelessWidget {
	final VoidCallback ontap;
	final String path;

	const SocialButton(this.path, this.ontap, {super.key});


	@override
	Widget build(BuildContext context) {
			return Container(
			padding: const EdgeInsets.all(sSmall),
			decoration: BoxDecoration(border: Border.all(color: AppColors.grey), borderRadius: BorderRadius.circular(100)),
			child: IconButton(
				onPressed: ontap,
				icon: Image(width: sSmall + 4, height: sSmall + 4, image: AssetImage(path)),
			),
		);
	}
}