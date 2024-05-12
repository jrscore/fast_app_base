// import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';
// import '../../../app/const/app_colors.dart';
// import '../../../app/const/app_sizes.dart';
// import '../../../common/utils/device_utility.dart';
// import '../../../common/utils/helpers/helper_functions.dart';
// import 'c_onboard.dart';

// class TOnBoardingNextButton extends StatelessWidget {
//   const TOnBoardingNextButton({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final dark = THelperFunctions.isDarkMode(context);
//     return Positioned(
//       right: sItem,
//       bottom: TDeviceUtils.getBottomNavigationBarHeight(),
//       child: ElevatedButton(
//         onPressed: () => OnBoardingController.instance.nextPage(),
//         style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: dark ? AppColors.primary : Colors.black),
//         child: const Icon(Iconsax.arrow_right_3),
//       ),
//     );
//   }
// }
