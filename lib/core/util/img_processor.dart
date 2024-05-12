import 'dart:io';

import 'package:flutter_image_compress/flutter_image_compress.dart';
// 이미지조작
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';


class ImageProcessor {

	static Future<XFile> compress(File imgage) async {
		final strage	= path.join( (await getTemporaryDirectory()).path, path.basename(imgage.path) );
		final result 	= await FlutterImageCompress.compressAndGetFile(
			imgage.path,
			strage,
			quality: 88,
		);
		return result!;
	}

	// static Future<File> addMeta(File image, List<String> infos) async {
	// 	// 이미지 파일 로드
	// 	img.Image baseImage = img.decodeImage(await image.readAsBytes())!;

	// 	// Canvas와 Paint 객체 초기화
	// 	ui.PictureRecorder recorder = ui.PictureRecorder();
	// 	ui.Canvas canvas = ui.Canvas(recorder);
	// 	ui.Paint paint = ui.Paint()
	// 		..color = Colors.black.withOpacity(0.5)
	// 		..style = ui.PaintingStyle.fill;
	// 	ui.TextPainter textPainter = ui.TextPainter(textDirection: ui.TextDirection.ltr);

	// 	// 정보 표시 박스 그리기
	// 	double padding = 10.0;
	// 	double fontSize = 14.0;
	// 	String infoText = infos.join('\n');
	// 	textPainter.text = ui.TextSpan(
	// 		text: infoText,
	// 		style: TextStyle(color: Colors.white, fontSize: fontSize),
	// 	);
	// 	textPainter.layout(maxWidth: baseImage.width.toDouble());
	// 	double textWidth = textPainter.width;
	// 	double textHeight = textPainter.height;
	// 	double rectWidth = textWidth + 2 * padding;
	// 	double rectHeight = textHeight + 2 * padding;
	// 	double left = baseImage.width - rectWidth - padding;
	// 	double top = baseImage.height - rectHeight - padding;

	// 	// 박스 그리기
	// 	canvas.drawRect(ui.Rect.fromLTWH(left, top, rectWidth, rectHeight), paint);

	// 	// 텍스트 그리기
	// 	textPainter.paint(canvas, ui.Offset(left + padding, top + padding));

	// 	// 최종 이미지 생성
	// 	ui.Image finalImage = await recorder.endRecording().toImage(baseImage.width, baseImage.height);
	// 	ByteData? byteData = await finalImage.toByteData(format: ui.ImageByteFormat.png);
	// 	List<int> buffer = byteData!.buffer.asUint8List();

	// 	// 이미지 파일 저장
	// 	Directory tempDir = await getTemporaryDirectory();
	// 	File resultFile = File(path.join(tempDir.path, 'modified_${path.basename(image.path)}'));
	// 	await resultFile.writeAsBytes(buffer);

	// 	return resultFile;
	// }
}
