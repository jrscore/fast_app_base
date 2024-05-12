import 'dart:io';
import 'package:get/get.dart';
import 'package:camera/camera.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

class CameraControllerX extends GetxController {
	late CameraController control;
	late Future<void> camera;
	var imglist = <File>[].obs;

	@override
	void onInit() {
		super.onInit();
		initCamera();
	}

	void initCamera() async {
		final deviceCameras = await availableCameras();
		control = CameraController(deviceCameras[0], ResolutionPreset.medium, enableAudio: false);
		camera  = control.initialize();
		update();
	}

	void takePicture() async {
		if (control.value.isTakingPicture || !control.value.isInitialized) return;
		XFile img = await control.takePicture();
		File file = await save(img);
		imglist.add(file);
	}
	// isFlash.value ? await control.setFlashMode(FlashMode.torch) : await control.setFlashMode(FlashMode.off);


	Future<File> save(XFile image) async {
		final dir = await getTemporaryDirectory();
		final name = '${DateTime.now().microsecondsSinceEpoch}.jpg';
		final file = File(p.join(dir.path, name));
		return await file.writeAsBytes(await image.readAsBytes());
	}

	@override
	void onClose() {
		control.dispose();
		super.onClose();
	}
}
