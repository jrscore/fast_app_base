

class AuthException implements Exception {
  
	final String code;

  AuthException(this.code);

	String get message {
		switch (code) {
			case 'email-already-in-use':            return '이미 등록된 이메일입니다.';
			case 'invalid-email':                   return '이메일 형식이 잘못되었습니다.';
			case 'weak-password':                   return '비밀번호가 너무 약합니다. 더 강력한 비밀번호를 선택해 주세요.';
			case 'user-disabled':                   return '해당 사용자 계정이 비활성화되었습니다. 지원팀에 문의해 주세요.';
			case 'user-not-found':                  return '로그인 정보가 유효하지 않습니다. 사용자를 찾을 수 없습니다.';
			case 'wrong-password':                  return '잘못된 비밀번호입니다. 비밀번호를 확인하고 다시 시도해 주세요.';
			case 'invalid-verification-code':       return '유효하지 않은 인증 코드입니다. 유효한 코드를 입력해 주세요.';
			case 'invalid-verification-id':         return '유효하지 않은 인증 ID입니다. 새로운 인증 코드를 요청해 주세요.';
			case 'quota-exceeded':                  return '할당량을 초과했습니다. 나중에 다시 시도해 주세요.';
			case 'email-already-exists':            return '이메일 주소가 이미 존재합니다. 다른 이메일을 사용해 주세요.';
			case 'provider-already-linked':         return '계정이 이미 다른 제공업체와 연결되어 있습니다.';
			case 'requires-recent-login':           return '이 작업은 최근 인증이 필요하며 민감할 수 있습니다. 다시 로그인해 주세요.';
			case 'credential-already-in-use':       return '이 자격증명은 이미 다른 사용자 계정과 연결되어 있습니다.';
			case 'user-mismatch':                   return '제공된 자격증명이 이전에 로그인한 사용자와 일치하지 않습니다.';
			case 'operation-not-allowed':           return '이 작업은 허용되지 않습니다. 지원팀에 문의해 주세요.';
			case 'expired-action-code':             return '작업 코드가 만료되었습니다. 새로운 작업 코드를 요청해 주세요.';
			case 'invalid-action-code':             return '작업 코드가 유효하지 않습니다. 코드를 확인하고 다시 시도해 주세요.';
			case 'missing-action-code':             return '작업 코드가 누락되었습니다. 유효한 작업 코드를 제공해 주세요.';
			case 'user-token-expired':              return '사용자의 토큰이 만료되었으며, 인증이 필요합니다. 다시 로그인해 주세요.';
			case 'invalid-credential':              return '제공된 자격증명이 잘못되었거나 만료되었습니다.';
			case 'user-token-revoked':              return '사용자의 토큰이 취소되었습니다. 다시 로그인해 주세요.';
			case 'invalid-message-payload':         return '이메일 템플릿 검증 메시지 페이로드가 유효하지 않습니다.';
			case 'invalid-sender':                  return '이메일 템플릿 발신자가 유효하지 않습니다. 발신자의 이메일을 확인해 주세요.';
			case 'invalid-recipient-email':         return '수신자 이메일 주소가 유효하지 않습니다. 유효한 수신자 이메일을 제공해 주세요.';
			case 'missing-iframe-start':            return '이메일 템플릿에 iframe 시작 태그가 누락되었습니다.';
			case 'missing-iframe-end':              return '이메일 템플릿에 iframe 종료 태그가 누락되었습니다.';
			case 'missing-iframe-src':              return '이메일 템플릿에 iframe src 속성이 누락되었습니다.';
			case 'missing-app-credential':          return '앱 자격증명이 누락되었습니다. 유효한 앱 자격증명을 제공해 주세요.';
			case 'invalid-app-credential':          return '앱 자격증명이 유효하지 않습니다. 유효한 앱 자격증명을 제공해 주세요.';
			case 'session-cookie-expired':          return 'Firebase 세션 쿠키가 만료되었습니다. 다시 로그인해 주세요.';
			case 'uid-already-exists':              return '제공된 사용자 ID가 이미 다른 사용자에 의해 사용되고 있습니다.';
			case 'app-deleted':                     return '이 FirebaseApp 인스턴스는 삭제되었습니다.';
			case 'user-token-mismatch':             return '제공된 사용자의 토큰이 인증된 사용자의 사용자 ID와 일치하지 않습니다.';
			case 'web-storage-unsupported':         return '웹 저장소가 지원되지 않거나 비활성화되었습니다.';
			case 'app-not-authorized':              return '제공된 API 키를 사용하여 Firebase 인증을 사용할 수 있는 권한이 이 앱에 없습니다.';
			case 'keychain-error':                  return '키체인 오류가 발생했습니다. 키체인을 확인하고 다시 시도해 주세요.';
			case 'internal-error':                  return '내부 인증 오류가 발생했습니다. 나중에 다시 시도해 주세요.';
			case 'INVALID_LOGIN_CREDENTIALS':       return '로그인 자격증명이 유효하지 않습니다.';

			case 'invalid-cordova-configuration':   return '제공된 Cordova 구성이 유효하지 않습니다.';
			case 'auth-domain-config-required':     return '액션 코드 검증 링크에 대한 authDomain 구성이 필요합니다.';
			case 'account-exists-with-different-credential':             return '같은 이메일로 등록된 계정이 있으나 다른 로그인 자격증명이 사용되었습니다.';
			default:                                 return '예상치 못한 인증 오류가 발생했습니다. 다시 시도해 주세요.';
		}
	}
}