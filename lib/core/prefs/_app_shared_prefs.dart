import 'package:shared_preferences/shared_preferences.dart';

class SampleSharedPrefs {

	
	SampleSharedPrefs._();			// 생성자호출금지
	static SampleSharedPrefs instance = SampleSharedPrefs._();
	late SharedPreferences _prefs;

	static init() async => instance._prefs = await SharedPreferences.getInstance();
	static void setCount(int val)	=> instance._prefs.setInt('count', val);
	static void getCount() 				=> instance._prefs.getInt('count') ?? 0;

}