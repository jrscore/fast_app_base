import 'package:coredex_pms/app/app_binding.dart';
import 'package:coredex_pms/app/theme/theme_container.dart';
import 'package:coredex_pms/core/common.dart';
import 'package:coredex_pms/present/auth/login/p_login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


// ## 
// ## 	Material -> Layout


class App extends StatelessWidget {
	const App({super.key});
	@override Widget build(BuildContext context) => 
		ThemeContainer(
			child: Builder(
			  builder: (context) => 
					GetMaterialApp(
						title: 'PMS ERP',
						initialBinding: AppBindings(),
						// navigatorKey: Get.key, 								// GetX 전역 키를 사용
						defaultTransition: Transition.fade, 	// 페이지 전환 효과를 추가 (옵션)
						theme: context.themeType.themeData,		// theme: Get.find<ThemeService>().themeData,
						// getPages: AppRoutes.table,
						// localizationsDelegates: context.localizationDelegates,
						// supportedLocales: context.supportedLocales,
						// locale: context.locale,  	
						// initialRoute: AppRoutes.initial, 
						home: LoginPage(), 
					)
			)			
	);
}