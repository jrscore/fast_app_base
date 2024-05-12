

class FlutterException implements Exception {
  final String code;

  FlutterException(this.code);

  String get message {
		switch (code) {
			case 'INVALID_LOGIN_CREDENTIALS':		return '로그인 자격증명이 유효하지 않습니다. 정보를 다시 확인해 주세요.';
			case 'too-many-requests':						return '요청이 너무 많습니다. 나중에 다시 시도해 주세요.';
			case 'invalid-argument':						return '인증 메소드에 잘못된 인자가 제공되었습니다.';
			case 'invalid-password':						return '잘못된 비밀번호입니다. 다시 시도해 주세요.';
			case 'invalid-phone-number':				return '제공된 전화번호가 유효하지 않습니다.';
			case 'operation-not-allowed':				return 'Firebase 프로젝트에서 로그인 제공자가 비활성화되었습니다.';
			case 'session-cookie-expired':			return 'Firebase 세션 쿠키가 만료되었습니다. 다시 로그인해 주세요.';
			case 'uid-already-exists':					return '제공된 사용자 ID는 이미 다른 사용자에 의해 사용 중입니다.';
			case 'sign_in_failed':							return '로그인에 실패했습니다. 다시 시도해 주세요.';
			case 'network-request-failed':			return '네트워크 요청에 실패했습니다. 인터넷 연결을 확인해 주세요.';
			case 'internal-error':							return '내부 오류가 발생했습니다. 나중에 다시 시도해 주세요.';
			case 'invalid-verification-code':		return '잘못된 인증 코드입니다. 유효한 코드를 입력해 주세요.';
			case 'invalid-verification-id':			return '잘못된 인증 ID입니다. 새로운 인증 코드를 요청해 주세요.';
			case 'quota-exceeded':							return '할당량을 초과했습니다. 나중에 다시 시도해 주세요.';
			default:														return '예상치 못한 플랫폼 오류가 발생했습니다. 다시 시도해 주세요.';
		}
	}

}
