import 'package:coredex_pms/core/prefs/_app_shared_prefs.dart';
import 'package:coredex_pms/firebase_options.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'app/app.dart';
import 'core/prefs/app_prefs.dart';
 


void main() async {
	// ## Flutter셋팅
	WidgetsFlutterBinding.ensureInitialized();
	
	await AppPreferences.init();				// Prefs 초기화
	await SampleSharedPrefs.init();			// Shared Prefs 초기화
	await EasyLocalization.ensureInitialized();
	
	await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
			// .then((value) => Get.put(AuthRepository()));

	
	timeago.setLocaleMessages('ko', timeago.KoMessages());

	runApp(App());
}