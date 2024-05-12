import 'package:flutter/material.dart';


class RegistPage extends StatelessWidget {
  const RegistPage({super.key});

  @override Widget build(BuildContext context) => Scaffold(
		// appBar: const TAppBar(showBackArrow: true),
		body: SingleChildScrollView(
			// child: Padding(
			// 	padding: const EdgeInsets.all(sItem),
			// 	child: Column(
			// 		crossAxisAlignment: CrossAxisAlignment.start,
			// 		children: [

			// 			Text(AppString.signupTitle, style: Theme.of(context).textTheme.headlineMedium),

			// 			const SignupForm(),
			// 			const SizedBox(height: sItem),

			// 			FormDivider(dividerText: AppString.orSignUpWith.capitalize!),
			// 			const SizedBox(height: sItem),

			// 			const SocialButtons()
			// 		],
			// 	),
			// ),
		),
	);
}
