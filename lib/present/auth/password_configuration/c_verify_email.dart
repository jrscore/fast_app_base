// import 'dart:async';
// import 'package:get/get.dart';

// class VerifyEmailController extends GetxController {
//   static VerifyEmailController get instance => Get.find();

//   @override
//   void onInit() {
//     /// Send Email Whenever Verify Screen appears & Set Timer for auto redirect.
//     sendEmailVerification();
//     setTimerForAutoRedirect();

//     super.onInit();
//   }

//   /// Send Email Verification link
//   sendEmailVerification() async {
//     try {
//     //   await AuthService.instance.sendEmailVerification();
//     //   TLoaders.successSnackBar(title: 'Email Sent', message: 'Please Check your inbox and verify your email.');
//     // } catch (e) {
//     //   TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
//     }
//   }

//   /// Timer to automatically redirect on Email Verification
//   setTimerForAutoRedirect() {
//     Timer.periodic(
//       const Duration(seconds: 1),
//       (timer) async {
//         await FirebaseAuth.instance.currentUser?.reload();
//         final user = FirebaseAuth.instance.currentUser;
//         if (user?.emailVerified ?? false) {
//           timer.cancel();
//           Get.off(
//             () => SuccessScreen(
//               image: AppImages.successfullyRegisterAnimation,
//               title: AppString.yourAccountCreatedTitle,
//               subTitle: AppString.yourAccountCreatedSubTitle,
//               onPressed: () => AuthService.instance.screenRedirect(FirebaseAuth.instance.currentUser),
//             ),
//           );
//         }
//       },
//     );
//   }

//   /// Manually Check if Email Verified
//   checkEmailVerificationStatus() async {
//     final currentUser = FirebaseAuth.instance.currentUser;
//     if (currentUser != null && currentUser.emailVerified) {
//       Get.off(
//         () => SuccessScreen(
//           image: AppImages.successfullyRegisterAnimation,
//           title: AppString.yourAccountCreatedTitle,
//           subTitle: AppString.yourAccountCreatedSubTitle,
//           onPressed: () => AuthService.instance.screenRedirect(FirebaseAuth.instance.currentUser),
//         ),
//       );
//     }
//   }
// }
