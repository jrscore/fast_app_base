import 'package:flutter/material.dart';

abstract class AbsShadow {
  const AbsShadow();
  BoxShadow get buttonShadow;
  BoxShadow get buttonShadowSmall;
  BoxShadow get textShadow;
  BoxShadow get defaultShadow;
  BoxShadow get thickTextShadow;
}


class DarkShadows extends AbsShadow {
  const DarkShadows();
  @override get buttonShadow 			=> const BoxShadow(offset: Offset(4, 4), blurRadius: 5, color: Color.fromARGB(255, 110, 110, 110),);
  @override get thickTextShadow 	=> const BoxShadow(offset: Offset(1, 1), blurRadius: 5, color: Color.fromARGB(255, 197, 197, 197),);
  @override get defaultShadow 		=> const BoxShadow(offset: Offset(1, 1), blurRadius: 3, color: Color.fromARGB(255, 81, 81, 81),);
  @override get textShadow 				=> const BoxShadow(offset: Offset(1, 1), blurRadius: 3, color: Color.fromARGB(255, 81, 81, 81),);
  @override get buttonShadowSmall => const BoxShadow(offset: Offset(1, 1), blurRadius: 3, color: Color.fromARGB(255, 81, 81, 81),);
}


class LightShadows extends AbsShadow {
	const LightShadows();
	@override get buttonShadow 			=> const BoxShadow(offset: Offset(4, 4),blurRadius: 5,color: Color.fromARGB(255, 227, 227, 227),);
	@override get thickTextShadow 	=> const BoxShadow(offset: Offset(4, 4),blurRadius: 5,color: Color.fromARGB(255, 227, 227, 227),);
	@override get defaultShadow 		=> const BoxShadow(offset: Offset(5, 5),blurRadius: 10,color: Color.fromARGB(255, 69, 69, 69),);
	@override get textShadow 				=> const BoxShadow(offset: Offset(4, 4),blurRadius: 5,color: Color.fromARGB(255, 227, 227, 227),);
	@override get buttonShadowSmall => const BoxShadow(offset: Offset(4, 4),blurRadius: 5,color: Color.fromARGB(255, 227, 227, 227),);
}
