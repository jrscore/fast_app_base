import 'dart:math' as math;

import 'package:coredex_pms/core/dart/ext_context.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension ColorExtension on Color {
  Color getSwatchByBrightness(int swatchValue) {
		final bright = Get.context!.themeType.themeData.brightness;
		return bright == Brightness.light
			? swatchShade(swatchValue) 
			: swatchShade(swatchValue + 600);
  
	}

  /// Get the shade of the color
  Color swatchShade(int swatchValue) =>
      HSLColor.fromColor(this).withLightness(1 - ((math.min(swatchValue, 1000)) / 1000)).toColor();
}
