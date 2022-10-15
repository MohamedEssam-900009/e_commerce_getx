import 'package:e_commerce_getx/utils/theme.dart';
import 'package:e_commerce_getx/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';

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
      decoration: const BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.only(
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
