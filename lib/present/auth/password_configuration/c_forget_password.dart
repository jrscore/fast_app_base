import 'package:get/get.dart';


class ForgetPasswordController extends GetxController {
  // static ForgetPasswordController get instance => Get.find();

  // /// Variables
  // final email = TextEditingController();
  // GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

  // /// Send Reset Password EMail
  // sendPasswordResetEmail() async {
  //   try {
  //     // Start Loading
  //     // TFullScreenLoader.openLoadingDialog('Processing your request...', AppImages.docerAnimation);

  //     // Check Internet Connectivity
  //     final isConnected = await NetState.instance.isConnected();
  //     if (!isConnected) {TFullScreenLoader.stopLoading(); return;}

  //     // Form Validation
  //     if (!forgetPasswordFormKey.currentState!.validate()) {
  //       TFullScreenLoader.stopLoading();
  //       return;
  //     }

  //     // Send EMail to Reset Password
  //     await AuthService.instance.sendPasswordResetEmail(email.text.trim());

  //     // Remove Loader
  //     TFullScreenLoader.stopLoading();

  //     // Redirect
  //     TLoaders.successSnackBar(title: 'Email Sent', message: 'Email Link Sent to Reset your Password'.tr);
  //     Get.to(() => ResetPasswordScreen(email: email.text.trim()));

  //   } catch (e) {
  //     TFullScreenLoader.stopLoading();
  //     TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
  //   }
  // }

  // resendResetPass(String email) async {
  //   try {
  //     // Start Loading
  //     TFullScreenLoader.openLoadingDialog('Processing your request...', AppImages.docerAnimation);

  //     // Check Internet Connectivity
  //     final isConnected = await NetState.instance.isConnected();
  //     if (!isConnected) {TFullScreenLoader.stopLoading(); return;}

  //     // Send EMail to Reset Password
  //     await AuthService.instance.sendPasswordResetEmail(email.trim());

  //     // Remove Loader
  //     TFullScreenLoader.stopLoading();

  //     // Redirect
  //     TLoaders.successSnackBar(title: 'Email Sent', message: 'Email Link Sent to Reset your Password'.tr);

  //   } catch (e) {
  //     TFullScreenLoader.stopLoading();
  //     TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
  //   }
  // }
}
