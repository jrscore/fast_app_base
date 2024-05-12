import 'package:coredex_pms/domain/service_auth.dart';
import 'package:coredex_pms/data/repo/r_user.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class LoginState extends GetxController {
  static LoginState get instance => Get.find();

  final auth = Get.find<AuthService>();
  final user = Get.find<UserService>();

  /// Variables
  final local 	= GetStorage();
  final emailC	= TextEditingController();
  final passC		= TextEditingController();
	final formkey	= GlobalKey<FormState>();
  // final hidePassword = true.obs; final rememberMe = false.obs;
  

  // @override void onInit() {
  //   emailC.text 		= local.read('remember_email') ?? ''; passC.text = local.read('remember_pass')  ?? '';
  //   super.onInit();
  // }

	Future<void> emailLogin() async {

		// check network
		// check validate
	
		// final isOnline = await NetworkManager.instance.isConnected();

		try {
			// FullDialog.open('로그인 중 ....', AppImages.docerAnimation);

			// if (!isOnline) {
			// 	FullDialog.close();
			// 	return;
			// }

			// if (!formkey.currentState!.validate()) {
			// 	FullDialog.close();
			// 	return;
			// }

			// if (remember.value) {local.write(lck_email, email.text.trim());local.write(lck_pass,  pass.text.trim());}

			await auth.emailLogin(emailC.text.trim(), passC.text.trim());
			// await userCon.fetchUser();	FullDialog.close();
			
		} catch (e) {
			// FullDialog.close();
			// AppLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
		}
	}

	Future<void> emailSignin() async {
		// try {
		// 	// Start Loading
		// 	// TFullScreenLoader.openLoadingDialog('Logging you in...', AppImages.docerAnimation);

		// 	// Check Internet Connectivity
		// 	// final isConnected = await NetState.instance.isConnected();
		// 	// if (!isConnected) {
		// 	// 	TFullScreenLoader.stopLoading();
		// 	// }

		// 	// Form Validation
		// 	if (!formkey.currentState!.validate()) {
		// 		TFullScreenLoader.stopLoading();
		// 	}

		// 	// Save Data if Remember Me is selected
		// 	if (rememberMe.value) {
		// 		localStorage.write('REMEMBER_ME_EMAIL', emailC.text.trim());
		// 		localStorage.write('REMEMBER_ME_PASSWORD', passC.text.trim());
		// 	}

		// 	// Login user using EMail & Password Authentication
		// 	final userCredentials = await auth.loginWithEmailAndPassword(emailC.text.trim(), passC.text.trim());

		// 	// Assign user data to RxUser of UserController to use in app
		// 	await user.fetchUserRecord();

		// 	// Remove Loader
		// 	TFullScreenLoader.stopLoading();

		// 	// Redirect
		// 	await auth.screenRedirect(userCredentials.user);
		// } catch (e) {
		// 	TFullScreenLoader.stopLoading();
		// 	TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
		// }
	}

	Future<void> googleSignIn() async {
		// try {
		// 	// Start Loading
		// 	TFullScreenLoader.openLoadingDialog('Logging you in...', AppImages.docerAnimation);

		// 	// Check Internet Connectivity
		// 	final isConnected = await NetState.instance.isConnected();
		// 	if (!isConnected) {
		// 		TFullScreenLoader.stopLoading();
		// 		return;
		// 	}

		// 	// Google Authentication
		// 	final userCredentials = await auth.signInWithGoogle();

		// 	// Save Authenticated user data in the Firebase Firestore
		// 	await user.saveUserRecord(userCredentials: userCredentials);

		// 	// Remove Loader
		// 	TFullScreenLoader.stopLoading();

		// 	// Redirect
		// 	await auth.screenRedirect(userCredentials?.user);
		// } catch (e) {
		// 	TFullScreenLoader.stopLoading();
		// 	TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
		// }
	}

	Future<void> facebookSignIn() async {
	// 	try {
	// 		// Start Loading
	// 		TFullScreenLoader.openLoadingDialog('Logging you in...', AppImages.docerAnimation);

	// 		// Check Internet Connectivity
	// 		final isConnected = await NetState.instance.isConnected();
	// 		if (!isConnected) {
	// 			TFullScreenLoader.stopLoading();
	// 			return;
	// 		}

	// 		// Facebook Authentication
	// 		final userCredentials = await auth.signInWithFacebook();

	// 		// Save Authenticated user data in the Firebase Firestore
	// 		await user.saveUserRecord(userCredentials: userCredentials);

	// 		// Remove Loader
	// 		TFullScreenLoader.stopLoading();

	// 		// Redirect
	// 		await auth.screenRedirect(userCredentials.user);
	// 	} catch (e) {
	// 		TFullScreenLoader.stopLoading();
	// 		TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
	// 	}
	}
}
