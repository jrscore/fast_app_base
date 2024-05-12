import 'package:coredex_pms/app/constant/app_size.dart';
import 'package:coredex_pms/present/auth/login/p_login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'c_forget_password.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgetPasswordController());
    return Scaffold(
      /// Appbar to go back OR close all screens and Goto LoginScreen()
      // appBar: TAppBar(
      //   actions: [
      //     IconButton(onPressed: () => Get.offAll(const LoginScreen()), icon: const Icon(CupertinoIcons.clear)),
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(sItem),
          child: Column(
            children: [
              /// Image with 60% of screen width
              // Image(
              //   image: const AssetImage(AppImages.deliveredEmailIllustration),
              //   width: THelperFunctions.screenWidth() * 0.6,
              // ),
              const SizedBox(height: sItem),

              /// Title & SubTitle
              Text('비밀번호 변경', style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: sItem),
              Text('mrtaimoorsikander@gmail.com', textAlign: TextAlign.center, style: Theme.of(context).textTheme.labelLarge),
              const SizedBox(height: sItem),
              Text(
                '비밀번호 변경',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: sItem),

              /// Buttons
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.offAll(() => const LoginPage()), child: const Text('발송완료'))),
              const SizedBox(height: sItem),
              SizedBox(
                  width: double.infinity,
                  // child: TextButton(onPressed: () => controller.resendResetPass(email), child: const Text('재발송'))
								),
            ],
          ),
        ),
      ),
    );
  }
}
