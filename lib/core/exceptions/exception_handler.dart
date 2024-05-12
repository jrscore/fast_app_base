

import 'package:coredex_pms/core/exceptions/exc_auth.dart';
import 'package:coredex_pms/core/exceptions/exc_firebase.dart';
import 'package:coredex_pms/core/exceptions/exc_flutter.dart';
import 'package:coredex_pms/core/exceptions/exc_format.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

mixin ExceptionHandler {

  String handleException(Object exception) {

		if (exception is FirebaseAuthException) {
			return AuthException(exception.code).message;

		} else if (exception is FirebaseException) {
			return FbServerException(exception.code).message;

		} else if (exception is FormatException) {
			return const FormattingException().message; // TFormatException에서 message 프로퍼티가 있다고 가정

		} else if (exception is PlatformException) {
			return FlutterException(exception.code).message;

		} else {
			return '알수없는 오류가 발생했습니다';
		}
	}
}
