// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'c_regist.dart';

// class TermCheckbox extends StatelessWidget {
//   const TermCheckbox({super.key});

//   @override Widget build(BuildContext context) {
//     final controller = SignupController.instance;
//     return Row(
//       children: [
//         /// CHECKBOX => Wrap in a Sized box to remove extra padding
//         SizedBox(
//           width: 24,
//           height: 24,
//           child: Obx(
//             () => Checkbox(value: controller.privacyPolicy.value, onChanged: (value) => controller.privacyPolicy.value = value!),
//           ),
//         ),
//         const SizedBox(width: AppSizes.md),
//         Flexible(
//           child: Text.rich(
//             TextSpan(
//               children: [
//                 TextSpan(text: '${AppString.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall),
//                 TextSpan(
//                   text: AppString.privacyPolicy,
//                   recognizer: TapGestureRecognizer()..onTap = () => TDeviceUtils.launchWebsiteUrl('https://codingwitht.com/'),
//                   style: Theme.of(context).textTheme.bodyMedium!.apply(
//                         color: THelperFunctions.isDarkMode(context) ? AppColors.white : AppColors.primary,
//                         decoration: TextDecoration.underline,
//                         decorationColor: THelperFunctions.isDarkMode(context) ? AppColors.white : AppColors.primary,
//                       ),
//                 ),
//                 TextSpan(text: ' ${AppString.and} ', style: Theme.of(context).textTheme.bodySmall),
//                 TextSpan(
//                   text: AppString.termsOfUse,
//                   recognizer: TapGestureRecognizer()..onTap = () => TDeviceUtils.launchWebsiteUrl('https://codingwitht.com/'),
//                   style: Theme.of(context).textTheme.bodyMedium!.apply(
//                         color: THelperFunctions.isDarkMode(context) ? AppColors.white : AppColors.primary,
//                         decoration: TextDecoration.underline,
//                         decorationColor: THelperFunctions.isDarkMode(context) ? AppColors.white : AppColors.primary,
//                       ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
