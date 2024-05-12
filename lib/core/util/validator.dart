

class Validator {

	static const _nameExp  	= r'^[a-zA-Z0-9_-]{3,20}$';
	static const _emailExp  = r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$';
	static const _numExp  	= r'[0-9]';
	static const _spcExp  	= r'[!@#$%^&*(),.?":{}|<>]';
	static const _phoneExp  = r'^\d{12}$';
	
	static String? empty(String? fieldName, String? value) {
		return (value == null || value.isEmpty) ? '$fieldName 입력해 주세요' : null;
	}

	static String? username(String? username) {
    if (username == null) 										return '필수 값 입니다';
    if (username.startsWith('_')) 						return '_ 또는 - 는 사용할수 없습니다';
    if (username.startsWith('-')) 						return '_ 또는 - 는 사용할수 없습니다';
    if (username.endsWith('_'))								return '_ 또는 - 는 사용할수 없습니다';
    if (username.endsWith('-'))								return '_ 또는 - 는 사용할수 없습니다';
		if (!RegExp(_nameExp).hasMatch(username))	return '유효한 형식이 아닙니다';
		return null;
	}


	static String? email(String? val) {
		if (val==null || val.isEmpty) 					return '필수 값 입니다';
		if (!RegExp(_emailExp).hasMatch(val))		return '이메일 형식이 일치하지 않습니다';
		return null;
	}


	static String? password(String? value) {
		if (value == null || value.isEmpty) 		return '필수값 입니다';
		if (value.length < 6)										return '6자 이상으로 해주세요';
		if (!value.contains(RegExp(_numExp))) 	return '숫자를 포함해 주세요';
		if (!value.contains(RegExp(_spcExp))) 	return '특수문자를 포함해 주세요';
		return null;
	}


	static String? phone(String? val) {
		if (val == null || val.isEmpty)					return '필수값 입니다';
		if (!RegExp(_phoneExp).hasMatch(val)) 	return '전화번호 형식이 맞지 않습니다';
		return null;
	}

	static String? gridMeter(double current, double pre) {
		if (current < 0) 		return '음수는 입력할 수 없습니다';
		if (current < pre  ) 	return '전월값보다 작습니다';
		return null; 																		
	}

	static String? invMeter(int current, int pre) {
		if (current < 0) 		return '음수는 입력할 수 없습니다';
		if (current < pre) 	return '전월값보다 작습니다';
		return null;
	}


}
