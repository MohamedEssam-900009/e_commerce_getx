import '../../../logic/controller/auth_controller.dart';

import '../../../utils/theme.dart';
import '../text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckWidget extends StatelessWidget {
  CheckWidget({super.key});

  final controller = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      builder: (_) {
        return Row(
          children: [
            InkWell(
              onTap: () {
                controller.checkBox();
              },
              child: Container(
                height: 35.0,
                width: 35.0,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: controller.isCheckBox
                    ? Get.isDarkMode
                        ? Image.asset('assets/images/check.png')
                        : const Icon(
                            Icons.done,
                            color: pinkClr,
                          )
                    : Container(),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Row(
              children: [
                TextUtils(
                  text: 'I accepted ',
                  fontSize: 16.0,
                  fontWeight: FontWeight.normal,
                  color: Get.isDarkMode ? Colors.black : Colors.white,
                  underline: TextDecoration.none,
                ),
                TextUtils(
                  text: 'terms & conditions',
                  fontSize: 16.0,
                  fontWeight: FontWeight.normal,
                  color: Get.isDarkMode ? Colors.black : Colors.white,
                  underline: TextDecoration.underline,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
