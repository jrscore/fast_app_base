import 'package:coredex_pms/app/constant/app_size.dart';
import 'package:coredex_pms/present/auth/login/f_header.dart';
import 'package:flutter/material.dart';

import 'f_form.dart';

class LoginPage extends StatelessWidget {
	const LoginPage({super.key});

	@override Widget build(BuildContext context) {
		return Scaffold(
			// resizeToAvoidBottomInset: false,	//singlechild 안쓸대
			body: SingleChildScrollView(
				child: Padding(
					padding: phLarge,
					child: Column(
						mainAxisAlignment: MainAxisAlignment.center,
						mainAxisSize: MainAxisSize.max,
						children: [
							LoginHeaderFrag(),
							EmailLoginForm(),

							// 이하 헤더 및 소셜로그인
							// FormDivider(text: 'Social Login'),hSection,
							// Row(mainAxisAlignment: MainAxisAlignment.center,
							// 	children: [SocialButton('$imgPath/logo/google.png', (){}),SocialButton('$imgPath/logo/facebook.png', (){})],
							// )
						],
					),
				),
			),
		);
	}
}
