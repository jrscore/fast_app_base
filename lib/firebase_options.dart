import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
	static FirebaseOptions get currentPlatform {
		if (kIsWeb)  throw UnsupportedError('UNSUPPORT');

		switch (defaultTargetPlatform) {
			case TargetPlatform.android:	return android;
			case TargetPlatform.iOS:			throw UnsupportedError('FirebaeCli-IOS ERR');
			case TargetPlatform.macOS:		throw UnsupportedError('FirebaeCli-MAC ERR');
			case TargetPlatform.windows:	throw UnsupportedError('FirebaeCli-WIN ERR');
			case TargetPlatform.linux:		throw UnsupportedError('FirebaeCli-LNX ERR');
			default:											throw UnsupportedError('UNSUPPORT');
		}
	}

	static const FirebaseOptions android = FirebaseOptions(
		apiKey: 'AIzaSyAGdUEzVPEhjXWuMC60hIvX3vHB2Od6s9c',
		appId: '1:1031096810375:android:0e1f51dab9e64a75c83122',
		messagingSenderId: '1031096810375',
		projectId: 'cdx-pms',
		databaseURL: 'https://cdx-pms-default-rtdb.asia-southeast1.firebasedatabase.app',
		storageBucket: 'cdx-pms.appspot.com',
	);
}
