

class AppExceptions implements Exception {

  final String message;

  const AppExceptions([this.message = 'An unexpected error occurred. Please try again.']);

  factory AppExceptions.fromCode(String code) {
    switch (code) {
      case 'email-already-in-use':			return const AppExceptions('이미 등록된 이메일입니다');
      case 'invalid-email':							return const AppExceptions('이메일이 유효하지 않습니다');
      case 'weak-password':							return const AppExceptions('비밀번호가 유효하지 않습니다');
      case 'user-disabled':							return const AppExceptions('사용자가 활성화되지 않습니다. 관리자에게 문의하십시요');
      case 'user-not-found':						return const AppExceptions('사용자를 찾을수 없습니다. 관리자에게 문의하십시요');
      case 'wrong-password':						return const AppExceptions('비밀번호가 맞지않습니다');
      case 'INVALID_LOGIN_CREDENTIALS':	return const AppExceptions('로그인정보가 맞지 않습니다');
      case 'too-many-requests':					return const AppExceptions('요청이 초과되었습니다');
      case 'invalid-argument':					return const AppExceptions('Invalid argument provided to the authentication method.');
      case 'invalid-password':					return const AppExceptions('Incorrect password. Please try again.');
      case 'invalid-phone-number':			return const AppExceptions('The provided phone number is invalid.');
      case 'operation-not-allowed':			return const AppExceptions('The sign-in provider is disabled for your Firebase project.');
      case 'session-cookie-expired':		return const AppExceptions('세선이 만료되었스니다');
      case 'uid-already-exists':				return const AppExceptions('The provided user ID is already in use by another user.');
      case 'sign_in_failed':						return const AppExceptions('Sign-in failed. Please try again.');
      case 'network-request-failed':		return const AppExceptions('Network request failed. Please check your internet connection.');
      case 'internal-error':						return const AppExceptions('Internal error. Please try again later.');
      case 'invalid-verification-code':	return const AppExceptions('Invalid verification code. Please enter a valid code.');
      case 'invalid-verification-id':		return const AppExceptions('Invalid verification ID. Please request a new verification code.');
      case 'quota-exceeded':						return const AppExceptions('Quota exceeded. Please try again later.');
      default:													return const AppExceptions();
    }
  }
}
