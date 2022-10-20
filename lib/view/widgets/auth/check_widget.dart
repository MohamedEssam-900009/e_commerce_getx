import '../../../utils/theme.dart';
import '../text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckWidget extends StatelessWidget {
  const CheckWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            height: 35.0,
            width: 35.0,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Get.isDarkMode
                ? Image.asset('assets/images/check.png')
                // ignore: prefer_const_constructors
                : Icon(
                    Icons.done,
                    color: pinkClr,
                    size: 30,
                  ),
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
  }
}
