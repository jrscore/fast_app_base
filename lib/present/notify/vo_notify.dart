import 'package:coredex_pms/core/common.dart';
import 'package:flutter/material.dart';

enum NotiType {

	tossPay	('토스페이', Icon(Icons.payment)),
	luck		('행운추첨', Icon(Icons.payment)),
	people	('연락처', 	Icon(Icons.payment)),
	stock		('주식',		Icon(Icons.payment)),
	walk		('도보',		Icon(Icons.payment)),
	money		('현금',		Icon(Icons.payment));

	final Icon icon;
	final String title;
	const NotiType( this.title, this.icon );
}


class NotifyVM {
	final NotiType type;
	final String desc;
	final DateTime date;
	bool isRead;

  NotifyVM(this.type, this.desc, this.date, {this.isRead = false});
}



final noti_dummys = <NotifyVM>[
  NotifyVM(NotiType.tossPay	,'이번주에 영화 한편 어때요? CGV 할인 쿠폰이 도착했어요'	 ,DateTime.now().subtract(27.minutes),),
  NotifyVM(NotiType.stock		,'인적분할에 대해 알려드릴게요.'												,DateTime.now().subtract(1.hours),),
  NotifyVM(NotiType.walk		,'1000걸음 이상 걸었다면 포인트 받으세요.'							 ,DateTime.now().subtract(1.hours),isRead: true,),
  NotifyVM(NotiType.money		,'유럽 식품 물가가 치솟고 있어요.'											,DateTime.now().subtract(8.hours),isRead: true,),
  NotifyVM(NotiType.walk		,'오늘 1000걸음을 넘겼어요. 포인트를 받아보세요.'					,DateTime.now().subtract(11.hours),),
  NotifyVM(NotiType.luck		,'6월 5일, 행운 복권이 도착했어요.'											,DateTime.now().subtract(12.hours),),
  NotifyVM(NotiType.people	,'띵동! 월요일 공동구매 보러가기'												,DateTime.now().subtract(1.days),),
];