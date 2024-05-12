// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../../widgets/appbar/appbar.dart';
// import '../../../data/services/s_auth_service.dart';
// import '../../../app/const/app_imgs.dart';
// import '../../../app/const/app_sizes.dart';
// import '../../../app/const/app_string.dart';
// import '../../../common/utils/helpers/helper_functions.dart';
// import '../password_configuration/c_verify_email.dart';

// class VerifyEmailScreen extends StatelessWidget {
//   const VerifyEmailScreen({super.key, this.email});

//   final String? email;

//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(VerifyEmailController());
//     return Scaffold(
//       /// Appbar close icon will first Logout the user & then redirect back to Login Screen()
//       /// Reason: We will store the data when user enters the Register Button on Previous screen.
//       /// Whenever the user opens the app, we will check if email is verified or not.
//       /// If not verified we will always show this Verification screen.
//       appBar: TAppBar(
//         actions: [IconButton(onPressed: () => AuthService.instance.logout(), icon: const Icon(CupertinoIcons.clear))],
//       ),
//       body: SingleChildScrollView(
//         // Padding to Give Default Equal Space on all sides in all screens.
//         child: Padding(
//           padding: const EdgeInsets.all(sItem),
//           child: Column(
//             children: [
//               /// Image
//               Image(
//                 image: const AssetImage(AppImages.deliveredEmailIllustration),
//                 width: THelperFunctions.screenWidth() * 0.6,
//               ),
//               const SizedBox(height: sItem),

//               /// Title, Email & SubTitle
//               Text(AppString.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
//               const SizedBox(height: sItem),
//               Text(email ?? '', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
//               const SizedBox(height: sItem),
//               Text(AppString.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
//               const SizedBox(height: sItem),

//               /// Continue Button
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(onPressed: () => controller.checkEmailVerificationStatus(), child: const Text(AppString.tContinue)),
//               ),
//               const SizedBox(height: sItem),

//               /// Resend Email, You can also add timer
//               SizedBox(
//                 width: double.infinity,
//                 child: TextButton(onPressed: () => controller.sendEmailVerification(), child: const Text(AppString.resendEmail)),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
