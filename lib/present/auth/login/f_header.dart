import 'package:coredex_pms/app/constant/app_size.dart';
import 'package:flutter/material.dart';


class LoginHeaderFrag extends StatelessWidget {
  const LoginHeaderFrag({ super.key });

  @override
  Widget build(BuildContext context) {
		// final dark = THelperFunctions.isDarkMode(context);
		return Column(
			children: [
				Image(
					height: 150,
					// image: AssetImage(dark ? AppImages.lightAppLogo : AppImages.darkAppLogo),
					image: AssetImage('assets/logos/coredex.png'),
				),
				Text('무안전기 PMS', style: Theme.of(context).textTheme.headlineMedium),
				hItem,
				Text('태양광 안전관리', style: Theme.of(context).textTheme.bodyMedium),
			],
		);
  }
}
