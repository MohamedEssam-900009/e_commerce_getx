import '../../../utils/theme.dart';
import '../text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContainerUnder extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final String textType;
  const ContainerUnder({
    super.key,
    required this.text,
    required this.onPressed,
    required this.textType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.0,
      decoration: BoxDecoration(
        color:Get.isDarkMode ? mainColor:pinkClr,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextUtils(
            text: text,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            underline: TextDecoration.none,
          ),
          TextButton(
            onPressed: onPressed,
            child: TextUtils(
              text: textType,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              underline: TextDecoration.underline,
            ),
          )
        ],
      ),
    );
  }
}
