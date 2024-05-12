import 'package:coredex_pms/app/constant/app_size.dart';
import 'package:coredex_pms/core/util/validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'state.dart';

import '../regist/p_regist.dart';

class EmailLoginForm extends StatelessWidget {

	const EmailLoginForm({super.key});

	@override Widget build(BuildContext context) {
		final formkey = GlobalKey<FormState>();	
		final state = Get.find<LoginState>();
		return Form(
			key: formkey,
			child: Padding(
				padding: phSection,
				child: Column(
					children: [
						/// Email
						TextFormField(
							controller: state.emailC,
							validator: Validator.email,
							decoration: const InputDecoration(prefixIcon: Icon(Icons.fork_right), labelText: 'email'),
						),
						hSection,

						/// Password
						TextFormField(
							controller: state.passC,
							obscureText: true,
							validator: (value) => Validator.empty('Password', value),
							decoration: InputDecoration(
								labelText: '비밀번호',
								prefixIcon: const Icon(Icons.password_outlined),
								// suffixIcon: IconButton(
								//   onPressed: () => state.hidePassword.value = !state.hidePassword.value,
								//   icon: const Icon(Icons.remove_red_eye),
								// ),
							),
						),
						hItem,

						/// 리멤버
						// Row(
						//   mainAxisAlignment: MainAxisAlignment.spaceBetween,
						//   children: [
						//     /// Remember Me
						//     Row(
						//       mainAxisSize: MainAxisSize.min,
						//       children: [
						//         Obx(() => Checkbox(value: c.rememberMe.value, onChanged: (value) => c.rememberMe.value = value!)),
						//         const Text('기억하기'),
						//       ],
						//     ),

						//     /// Forget Password
						//     TextButton(onPressed: () => Get.to(() => const ForgetPasswordScreen()), child: const Text('비밀번호찾기')),
						//   ],
						// ),
						// hSection,

						/// 로그인
						SizedBox(
							width: double.infinity,
							child: ElevatedButton(onPressed: () => state.emailLogin(), child: const Text('로그인')),
						),
						hSection,

						// 회원가입
						SizedBox(
							width: double.infinity,
							child: OutlinedButton(onPressed: () => Get.to(() => const RegistPage()), child: const Text('계정생성')),
						),
					],
				),
			),
		);
	}
}
