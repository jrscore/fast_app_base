import 'package:coredex_pms/app/constant/app_size.dart';
import 'package:coredex_pms/core/util/validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'c_forget_password.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgetPasswordController());
    return Scaffold(
      /// Custom Appbar
      // appBar: TAppBar(actions: [IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))]),
      body: Padding(
        padding: const EdgeInsets.all(sItem),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Headings
            Text('비밀번호 변경', style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: sItem),
            Text('비밀번호 변경', style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: sItem * 2),

            /// Text field
            Form(
              // key: controller.forgetPasswordFormKey,
              child: TextFormField(
                // controller: controller.email,
                validator: Validator.email,
                decoration: const InputDecoration(labelText: '이메일', prefixIcon: Icon(Iconsax.direct_right)),
              ),
            ),
            const SizedBox(height: sItem),

            /// Submit Button
            SizedBox(
              width: double.infinity,
              // child: ElevatedButton(onPressed: () => controller.sendPasswordResetEmail(), child: const Text('확인')),
            ),
          ],
        ),
      ),
    );
  }
}
