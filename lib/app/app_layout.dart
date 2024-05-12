import 'package:coredex_pms/app/app_state.dart';
import 'package:coredex_pms/core/common.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AppFrame extends StatelessWidget {
  const AppFrame({super.key});

  @override Widget build(BuildContext context) {
		final state = AppState.instance;
		const extendBody = true;
		
    return Scaffold(

      extendBody: true,

			body: SafeArea(
				bottom: !extendBody,
				child: Container(
					color: context.appColors.appbarBackgroud,
					padding: EdgeInsets.only(bottom: extendBody ? 60 : 0),
					child: Obx(() => state.pages[state.index.value]),
				),
			),

      bottomNavigationBar: Obx( () => BottomNavigationBar(
				type: BottomNavigationBarType.fixed,
				currentIndex: state.index.value,
				elevation: 0,
				onTap: (index) => state.index.value = index,
				showSelectedLabels: false,
				showUnselectedLabels: false,
				items: const [
					BottomNavigationBarItem(icon: Icon(Icons.schedule),  label: '일정'),
					BottomNavigationBarItem(icon: Icon(Icons.home),  		 label: '수용가'),
					BottomNavigationBarItem(icon: Icon(Icons.search), 	 label: '검색'),
					BottomNavigationBarItem(icon: Icon(Icons.settings),  label: '설정'),
				],
      )),
      // bottomNavigationBar: Obx( () => NavigationBar(
			// 	height: 80,
			// 	animationDuration: const Duration(seconds: 3),
			// 	selectedIndex: navstate.index.value,
			// 	elevation: 0,
			// 	backgroundColor: THelperFunctions.isDarkMode(context) ? AppColors.black : Colors.white,
			// 	indicatorColor: THelperFunctions.isDarkMode(context) ? AppColors.white.withOpacity(0.1) : AppColors.black.withOpacity(0.1),
			// 	onDestinationSelected: (index) => navstate.index.value = index,
			// 	destinations: const [
			// 		NavigationDestination(icon: Icon(Icons.schedule),  label: '일정'),
			// 		NavigationDestination(icon: Icon(Icons.home),  		 label: '수용가'),
			// 		NavigationDestination(icon: Icon(Icons.search), 	 label: '검색'),
			// 		NavigationDestination(icon: Icon(Icons.settings),  label: '설정'),
			// 	],
      // )),
    );
  }
}


