// import 'dart:io';
// import 'package:coredex_pms/domain/use_case/provider_camera.dart';
// import 'package:get/get.dart';
// import 'package:flutter/material.dart';
// import 'package:coredex_pms/widget/photo_viewer/photo_full_viewer.dart';

// class PhotoGridViewer extends StatelessWidget {
//   final CameraProvider con;

//   const PhotoGridViewer({super.key, required this.con});

//   @override
//   Widget build(BuildContext context) {
//     return Obx(() => Wrap(
//       children: List.generate(con.photos.length, (i) => 
//         InkWell(
//           onTap: () => Get.to(PhotoFullViewer(photos: con.photos, index: i)),
//           child: Hero(
//             tag: "photo$i", // Ensure unique tag for Hero animation
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(8),
//               child: Image.file( File(con.photos[i]), width: 200, height: 100, fit:BoxFit.cover ),
//             ),
//           ),
//         ))
//       ),
//     );
//   }
// }
