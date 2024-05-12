import 'package:coredex_pms/app/constant/app_const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum Language {
  korean(Locale('ko'), '$imgPath/flag/flag_kr.png'),
  english(Locale('en'),'$imgPath/flag/flag_us.png');

  final Locale locale;
  final String flagPath;

  const Language(this.locale, this.flagPath);

  static Language find(String key) => Language.values.asNameMap()[key] ?? Language.english;
}

Language get currentLanguage => Get.locale!.languageCode == 'ko' ? Language.korean : Language.english;
