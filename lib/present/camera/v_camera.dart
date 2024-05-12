import 'dart:io';

import 'package:coredex_pms/present/camera/c_camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:camera/camera.dart';

class CameraViewer extends GetView<CameraControllerX> {
  const CameraViewer({super.key});


	@override
	Widget build(BuildContext context) {
		return Scaffold(
			floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

			floatingActionButton: FloatingActionButton(
				backgroundColor: const Color.fromRGBO(255, 255, 255, .7),
				onPressed: controller.takePicture,
				child: const Icon(Icons.camera_alt, size: 40, color: Colors.black87),
			),

			body: Stack(children: [

				// #1.카메라뷰어
				FutureBuilder<void>(
					future: controller.camera,
					builder: (_, snapshot) {
						if (snapshot.connectionState == ConnectionState.done) {
							return CameraPreview(controller.control);
						} else {
							return const Center(child: CircularProgressIndicator());
						}
					},
				),
				
				// #2.카메라리스트
				Align(
					alignment: Alignment.bottomLeft,
					child: SingleChildScrollView(
						scrollDirection: Axis.horizontal,
						child: Padding(
							padding: const EdgeInsets.only(left: 7, bottom: 75),
							child: Container(
								height: 100,
								decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
								child: ListView.builder(
									shrinkWrap: true,
									itemCount: controller.imglist.length,
									scrollDirection: Axis.horizontal,
									itemBuilder: (BuildContext context, int index) =>
										ClipRRect(
											borderRadius: BorderRadius.circular(10),
											child: Image(
												height: 100,
												width: 100,
												opacity: const AlwaysStoppedAnimation(07),
												image: FileImage(File(controller.imglist[index].path)),
												fit: BoxFit.cover,
											),
										)
								),
							),
						),
					)
				)
			])
		);
	}
}