import 'package:coredex_pms/present/auth/login/p_login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


class OnBoardingController extends GetxController {

  static OnBoardingController get instance => Get.find();

  /// Variables
  final pIndex = 0.obs;
  final pageCon = PageController();

  void updateIndex(i) => pIndex.value = i;

  void dotNavigate(i) {
    pIndex.value == i;
    pageCon.jumpToPage(i);
  }

  /// Update Current Index & jump to next page
  void nextPage() {
    // If its the last index then goto Login Screen.
    // Here you can define your LocalStorage to set OnBoarding bool isFirstTime = false.
    // So, that where ever app launches, app will check if isFirstTime = true, show onBoarding else show Login or Dashboard.
    if (pIndex.value == 2) {

      final userStorage = GetStorage();
      userStorage.write('isFirstTime', false);

      Get.to(() => const LoginPage());
    } else {
      int page = pIndex.value + 1;
      // You can also use .animateToPage() Give duration and Curve
      pageCon.jumpToPage(page);
    }
  }

  void skip() {
    pIndex.value = 2;
    pageCon.jumpToPage(2);
  }
}
