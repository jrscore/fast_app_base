

class FormattingException implements Exception {
 
  final String message;

  const FormattingException([this.message = '입력 포맷에 문제가 발생하였습니다']);

  String get formattedMessage => message;

  factory FormattingException.fromMessage(String message) => FormattingException(message);
  factory FormattingException.fromCode(String code) {
    switch (code) {
      case 'invalid-email-format':				return const FormattingException('이메일 형식이 맞지 않습니다');
      case 'invalid-phone-number-format':	return const FormattingException('전화번호 형식이 맞지 않습니다');
      case 'invalid-date-format':					return const FormattingException('날짜형식이 맞지 않습니다');
      case 'invalid-url-format':					return const FormattingException('URL 형식이 맞지 않습니다');
      case 'invalid-credit-card-format':	return const FormattingException('신용카드 형식이 만지 않습니다');
      case 'invalid-numeric-format':			return const FormattingException('숫자 형식에 맞지 않습니다');
      default:														return const FormattingException();
    }
  }
}