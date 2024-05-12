import 'package:coredex_pms/app/constant/app_const.dart';
import 'package:coredex_pms/present/stock/m_stock_mixin.dart';

class SimpleStock {
	final String title;
  SimpleStock(this.title);

	factory SimpleStock.fromJson(dynamic json) => SimpleStock(json['title']);
}

class PopularStock extends SimpleStock with StockMixinProvider{
	@override final int current;
	@override final int lastday;
  PopularStock({required title, required this.current, required this.lastday}):super(title);
}

class Stock extends PopularStock {
	final String img;
  Stock({required this.img, required super.title, required super.current, required super.lastday});
}


List<Stock> get  stocklist => [
	Stock(title: '한화솔루', img:'$imgPath/stock/interest_stock_01.png', current: 41600, 	lastday: 41600,),
	Stock(title: '현대모비', img:'$imgPath/stock/interest_stock_02.png', current: 219000, lastday: 217000,),
	Stock(title: '셀트리온', img:'$imgPath/stock/interest_stock_03.png', current: 78000, 	lastday: 80000,),
	Stock(title: '하이브온', img:'$imgPath/stock/interest_stock_04.png', current: 92300, 	lastday: 80000,),
	Stock(title: '헬로비전', img:'$imgPath/stock/interest_stock_05.png', current: 82000, 	lastday: 80000,),
	Stock(title: '대한전선', img:'$imgPath/stock/interest_stock_06.png', current: 82000, 	lastday: 80000,),
	Stock(title: '하이닉스', img:'$imgPath/stock/interest_stock_07.png', current: 82000, 	lastday: 80000,),
	Stock(title: '삼성전자', img:'$imgPath/stock/interest_stock_08.png', current: 82000, 	lastday: 80000,),
	Stock(title: '카카오톡', img:'$imgPath/stock/interest_stock_09.png', current: 82000, 	lastday: 80000,),
	Stock(title: '엘지화학', img:'$imgPath/stock/interest_stock_10.png', current: 82000, 	lastday: 80000,),
	Stock(title: '삼양옵틱', img:'$imgPath/stock/interest_stock_11.png', current: 82000, 	lastday: 80000,),
];