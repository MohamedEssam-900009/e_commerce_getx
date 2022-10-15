import 'package:e_commerce_getx/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';

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
                borderRadius: BorderRadius.circular(10.0)),
            child: Image.asset('assets/images/check.png'),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Row(
          children: const [
            TextUtils(
              text: 'I accepted ',
              fontSize: 16.0,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
            TextUtils(
              text: 'terms & conditions',
              fontSize: 16.0,
              fontWeight: FontWeight.normal,
              color: Colors.black,
              underline: TextDecoration.underline,
            ),
          ],
        )
      ],
    );
  }
}
