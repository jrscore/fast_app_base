import 'package:get/get.dart';

mixin DataProvider<T> on GetxController {
  T get intance => Get.find();
}