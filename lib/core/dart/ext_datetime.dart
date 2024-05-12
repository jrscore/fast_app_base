

import 'package:easy_localization/easy_localization.dart';

extension DateTimeExtension on DateTime {
  String get formattedDate => DateFormat('yyyy/MM/dd').format(this);
  String get formattedTime => DateFormat('HH:mm').format(this);
  String get formattedDateTime => DateFormat('dd/MM/yyyy HH:mm').format(this);
}


int daysThisMonth() {
	DateTime now = DateTime.now();
  final nextMth = (now.month == 12) 
			? DateTime(now.year + 1, 1, 1)  
			: DateTime(now.year, now.month + 1, 1);
  return nextMth.subtract(Duration(days: 1)).day;
}

int daysLastMonth() {
  DateTime now = DateTime.now();
	return DateTime(now.year, now.month, 1).subtract(Duration(days: 1)).day;
}

int daysUntilThisMonth() {
	DateTime now = DateTime.now();
  DateTime month = DateTime(now.year, now.month, 1);
  return now.difference(month).inDays + 1;
}

DateTime utGetPreMonth(int mth) {
  DateTime now = DateTime.now();
  DateTime firstDayLastMonth = DateTime(now.year, now.month - mth, 1);
  return firstDayLastMonth;
}


