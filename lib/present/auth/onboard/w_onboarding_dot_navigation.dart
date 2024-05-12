// import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import '../../../app/const/app_colors.dart';
// import '../../../app/const/app_sizes.dart';
// import '../../../common/utils/device_utility.dart';
// import '../../../common/utils/helpers/helper_functions.dart';
// import 'c_onboard.dart';

// class TOnBoardingDotNavigation extends StatelessWidget {
//   const TOnBoardingDotNavigation({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final controller = OnBoardingController.instance;
//     final dark = THelperFunctions.isDarkMode(context);

//     return Positioned(
//       bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
//       left: sItem,
//       child: SmoothPageIndicator(
//         count: 3,
//         controller: controller.pageCon,
//         onDotClicked: controller.dotNavigate,
//         effect: ExpandingDotsEffect(activeDotColor: dark ? AppColors.white: AppColors.black, dotHeight: 6),
//       ),
//     );
//   }
// }