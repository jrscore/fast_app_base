

enum LocalDBErrorType {
	alreadyExist,
	notExist,
	unknown,
}

class LocalDBError {
	LocalDBErrorType localDBErrorType;
	String message;

	LocalDBError(
		this.localDBErrorType,
		this.message,
	);
}
