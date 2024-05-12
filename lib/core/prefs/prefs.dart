import 'package:coredex_pms/core/prefs/item/nullable_preference_item.dart';
import 'package:coredex_pms/core/prefs/item/preference_item.dart';
import 'package:coredex_pms/app/theme/theme_type.dart';

class Prefs {
	static final appTheme = NullablePreferenceItem<ThemeType>('appTheme');

	// preference 사용법예제
	static final count 	= NullablePreferenceItem<int>('count');
	static final isbool	= NullablePreferenceItem<bool>('isbool');
	static final bool2	= PreferenceItem<bool>('isbool', false);
}

