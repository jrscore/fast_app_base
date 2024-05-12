import 'package:coredex_pms/app/app_layout.dart';
import 'package:coredex_pms/core/exceptions/exception_handler.dart';
import 'package:coredex_pms/present/auth/login/p_login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';





class AuthService extends GetxService with ExceptionHandler{

	//TODO: usecase변경
	static AuthService get get => Get.find();

	final _auth 	= FirebaseAuth.instance;
	var 	_user 	= Rx<User?>(null);
	final local 	= GetStorage();
	String? _corp;



	User?  get user 	=> _user.value;
	String get userid => _user.value?.uid ?? "";
	String get email 	=> _user.value?.email ?? "";
	String get name		=> _user.value?.displayName ?? "";
	String get phone 	=> _user.value?.phoneNumber ?? "";
	String get corp 	=> _corp ?? '';


	//## FlutterNativeSplash.remove();// pageRedirect(_user.value);
	@override void onReady() {
		_user = Rx<User?>(_auth.currentUser);
		_user.bindStream(_auth.userChanges());
		ever(_user, authRedirection);
	}

	authRedirection(User? user) async {
		if (user == null) {
			Get.offAll(() => const LoginPage());
		} else {
			Get.offAll(() => const AppFrame());
			// TODO://로그인이 되어있다면  Auth에 등록된 회사정보를 가져온다
			_corp='muan';
		}
		
		// if (user != null) {
		// 	if (user.emailVerified) {
		// 		await AppLocalStorage.init(user.uid);
		// 		Get.offAll(() => const HomeMenu());
		// 	} else {
		// 		Get.offAll(() => EmailVerify(email: email));
		// 	}
		// } else {
		// 	local.writeIfNull('isFirstTime', true);
		// 	local.read('isFirstTime') == true 
		// 			? Get.offAll(() => const OnboardPage()) 
		// 			: Get.offAll(() => const LoginPage()) ;
		// }
	}

	Future<UserCredential> emailLogin(String email, String password) async {
		try {
			return await _auth.signInWithEmailAndPassword(email: email, password: password);
		} catch (e) {
			throw handleException(e);
		}
	}

	Future<void> logout() async {
		try {
			await _auth.signOut();	// await GoogleSignIn().signOut();// await FacebookAuth.instance.logOut();
		} catch (e) {
			throw handleException(e);
		}
	}



	Future<UserCredential> emailRegist(String email, String password, String corp) async {
		try {
			UserCredential userCred = await _auth.createUserWithEmailAndPassword(email: email, password: password);
			return userCred;
		} catch (e) {
			throw handleException(e);
		}
	}


	Future<void> emailReAuth(String email, String password) async {
		try {
			AuthCredential credential = EmailAuthProvider.credential(email: email, password: password);
			await _auth.currentUser!.reauthenticateWithCredential(credential);
		} catch (e) {
			throw handleException(e);
		}
	}


	Future<void> emailVerify() async {
		try {
			await _auth.currentUser?.sendEmailVerification();
		} catch (e) {
			throw handleException(e);
		}
	}



	Future<void> passResetEmail(email) async {
		try {
			await _auth.sendPasswordResetEmail(email: email);
		} catch (e) {
			throw handleException(e);
		}
	}



	/* ---------------------------- Federated identity & social sign-in ---------------------------------*/

	Future<UserCredential?> signInWithGoogle() async {
	  return null;
	
		// try {
		// 	// Trigger the authentication flow
		// 	final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

		// 	// Obtain the auth details from the request
		// 	final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

		// 	// Create a new credential
		// 	final credential = GoogleAuthProvider.credential(
		// 		accessToken: googleAuth?.accessToken,
		// 		idToken: googleAuth?.idToken,
		// 	);

		// 	// Once signed in, return the UserCredential
		// 	return await FirebaseAuth.instance.signInWithCredential(credential);
		// } catch (e) {
		// 	throw handleException(e);
		// }
	}

	///[FacebookAuthentication] - FACEBOOK
	Future<UserCredential?> signInWithFacebook() async {
		return null;
	
		// try {
		//   // Trigger the sign-in flow
		//   final LoginResult loginResult = await FacebookAuth.instance.login(permissions: ['email']);

		//   // Create a credential from the access token
		//   final AccessToken accessToken = loginResult.accessToken!;
		//   final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(accessToken.token);

		//   // Once signed in, return the UserCredential
		//   return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
		// } on FirebaseAuthException catch (e) {
		//   throw TFirebaseAuthException(e.code).message;
		// } on FirebaseException catch (e) {
		//   throw TFirebaseException(e.code).message;
		// } on FormatException catch (_) {
		//   throw const TFormatException();
		// } on PlatformException catch (e) {
		//   throw TPlatformException(e.code).message;
		// } catch (e) {
		//   throw 'Something went wrong. Please try again';
		// }
	}

	/* ---------------------------- ./end Federated identity & social sign-in ---------------------------------*/

	

	Future<void> deleteAccount() async {
		// try {
		// 	await UserService.instance.removeUserRecord(_auth.currentUser!.uid);
		// 	await _auth.currentUser?.delete();
		// } catch (e) {
		// 	throw handleException(e);
		// }
	}
}
