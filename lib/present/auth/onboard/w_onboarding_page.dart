// import 'package:flutter/material.dart';

// import '../../../app/const/app_sizes.dart';
// import '../../../common/utils/helpers/helper_functions.dart';



// class OnBoardingPage extends StatelessWidget {
//   /// Widget for displaying content on an onboarding page.
//   const OnBoardingPage({
//     super.key,
//     required this.image,
//     required this.title,
//     required this.subTitle,
//   });

//   final String image, title, subTitle;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(sItem),
//       child: Column(
//         children: [
//           // Display the onboarding image
//           Image(
//             width: THelperFunctions.screenWidth() * 0.8,
//             height: THelperFunctions.screenHeight() * 0.6,
//             image: AssetImage(image),
//           ),
//           // Display the onboarding title
//           Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
//           const SizedBox(height: sItem),
//           // Display the onboarding subtitle
//           Text(subTitle, style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center),
//         ],
//       ),
//     );
//   }
// }
