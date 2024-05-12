import 'package:coredex_pms/app/constant/app_size.dart';
import 'package:flutter/material.dart';

class Arrow extends StatelessWidget {
  final double size;
  final AxisDirection direction;
	final Color?  color;

  const Arrow(this.direction, {Key? key, this.size = sItem,  this.color}): super(key: key);

	// 정적 메서드로 left 화살표 버튼 생성
	factory Arrow.left	({Color? color}) 	=> Arrow(AxisDirection.left, 	color: color, );
	factory Arrow.right({Color? color}) 	=> Arrow(AxisDirection.right, color: color, );
	factory Arrow.up		({Color? color}) 	=> Arrow(AxisDirection.up, 		color: color, );
	factory Arrow.down	({Color? color}) 	=> Arrow(AxisDirection.down, 	color: color, );

  
  @override Widget build(BuildContext context) => Icon(icon, size:size, color: color, );

  IconData get icon {
    switch (direction) {
			case AxisDirection.up:			return Icons.keyboard_arrow_up;
			case AxisDirection.down:		return Icons.keyboard_arrow_down;
			case AxisDirection.right:		return Icons.arrow_forward_ios;
			case AxisDirection.left:		return Icons.arrow_back_ios;
    }
  }
}
