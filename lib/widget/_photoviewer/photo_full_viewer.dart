

// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:photo_view/photo_view.dart';
// import 'package:photo_view/photo_view_gallery.dart';

// class PhotoFullViewer extends StatelessWidget {
//   final int index;
//   final List<String> photos;

//   const PhotoFullViewer({Key? key, required this.photos, this.index = 0}): super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.transparent,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: Colors.white),
//           onPressed: () => Navigator.of(context).pop(),
//         ),
//       ),
//       body: PhotoViewGallery.builder(
//         itemCount: photos.length,
//         pageController: PageController(initialPage: index),
//         builder: (BuildContext context, int index) {
//           return PhotoViewGalleryPageOptions(
//             imageProvider: FileImage(File(photos[index])),  // Use FileImage for local files
//             heroAttributes: PhotoViewHeroAttributes(tag: 'photo$index'),  // Unique tag for Hero animation
//             minScale: PhotoViewComputedScale.contained * 0.8,
//             maxScale: PhotoViewComputedScale.covered * 2,
//           );
//         },
//       ),
//     );
//   }
// }
