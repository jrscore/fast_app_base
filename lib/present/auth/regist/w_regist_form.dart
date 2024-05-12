// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';
// import '../../../app/const/app_sizes.dart';
// import '../../../app/const/app_string.dart';
// import '../../../common/utils/validator.dart';
// import 'c_regist.dart';
// import 'w_terms_check.dart';

// class SignupForm extends StatelessWidget {
//   const SignupForm({ super.key });

//   @override Widget build(BuildContext context) {
//     final c = Get.put(SignupController());
//     return Form(
//       key: c.signupFormKey,
//       child: Column(children: [

// 				const SizedBox(height: sItem),

// 				Row(children: [
// 					Expanded(
// 						child: TextFormField(
// 							controller: c.firstName,
// 							validator: (value) => Validator.empty('First name', value),
// 							expands: false,
// 							decoration: const InputDecoration(labelText: AppString.firstName, prefixIcon: Icon(Iconsax.user)),
// 						),
// 					),
// 					const SizedBox(width: AppSizes.spaceBtwInputFields),
// 					Expanded(
// 						child: TextFormField(
// 							controller: c.lastName,
// 							validator: (value) => Validator.empty('Last name', value),
// 							expands: false,
// 							decoration: const InputDecoration(labelText: AppString.lastName, prefixIcon: Icon(Iconsax.user)),
// 						),
// 					),
// 				]),
//           const SizedBox(height: AppSizes.spaceBtwInputFields),

//           /// Username
//           TextFormField(
//             controller: c.username,
//             validator: Validator.username,
//             expands: false,
//             decoration: const InputDecoration(labelText: AppString.username, prefixIcon: Icon(Iconsax.user_edit)),
//           ),
//           const SizedBox(height: AppSizes.spaceBtwInputFields),

//           /// Email
//           TextFormField(
//             controller: c.email,
//             validator: Validator.email,
//             decoration: const InputDecoration(labelText: AppString.email, prefixIcon: Icon(Iconsax.direct)),
//           ),
//           const SizedBox(height: AppSizes.spaceBtwInputFields),

// 					// phone
//           TextFormField(
//             controller: c.phoneNumber,
//             validator: Validator.phone,
//             decoration: const InputDecoration(labelText: AppString.phoneNo, prefixIcon: Icon(Iconsax.call)),
//           ),
//           const SizedBox(height: AppSizes.spaceBtwInputFields),

//           /// Password
//           Obx(
//             () => TextFormField(
//               controller: c.password,
//               validator: Validator.password,
//               obscureText: c.hidePassword.value,
//               decoration: InputDecoration(
//                 labelText: AppString.password,
//                 prefixIcon: const Icon(Iconsax.password_check),
//                 suffixIcon: IconButton(
//                   onPressed: () => c.hidePassword.value = !c.hidePassword.value,
//                   icon: const Icon(Iconsax.eye_slash),
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(height: sItem),

//           /// Terms&Conditions Checkbox
//           const TermCheckbox(),
//           const SizedBox(height: sItem),

//           /// Sign Up Button
//           SizedBox(
//             width: double.infinity,
//             child: ElevatedButton(onPressed: () => c.signup(), child: const Text(AppString.createAccount)),
//           ),
//         ],
//       ),
//     );
//   }
// }
