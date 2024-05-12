// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'c_onboard.dart';
// import 'w_onboarding_dot_navigation.dart';
// import 'w_onboarding_next_button.dart';
// import 'w_onboarding_page.dart';
// import 'w_onboarding_skip_button.dart';

// /// Onboarding screen to introduce users to the app.
// class OnBoardingScreen extends StatelessWidget {
//   const OnBoardingScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Controller for managing onboarding logic and state.
//     final controller = Get.put(OnBoardingController());
//     return Scaffold(
//       body: Stack(
//         children: [
//           /// Horizontal Scrollable Pages
//           PageView(
//             controller: controller.pageCon,
//             onPageChanged: controller.updateIndex,
//             children: const [
//               OnBoardingPage(
//                 image: AppImages.onBoardingImage1,
//                 title: AppString.onBoardingTitle1,
//                 subTitle: AppString.onBoardingSubTitle1,
//               ),
//               OnBoardingPage(
//                 image: AppImages.onBoardingImage2,
//                 title: AppString.onBoardingTitle2,
//                 subTitle: AppString.onBoardingSubTitle2,
//               ),
//               OnBoardingPage(
//                 image: AppImages.onBoardingImage3,
//                 title: AppString.onBoardingTitle3,
//                 subTitle: AppString.onBoardingSubTitle3,
//               ),
//             ],
//           ),

//           /// Skip Button
//           const TOnBoardingSkipButton(),

//           /// Dot Navigation SmoothPageIndicator
//           const TOnBoardingDotNavigation(),

//           /// Circular Button
//           const TOnBoardingNextButton(),
//         ],
//       ),
//     );
//   }
// }
