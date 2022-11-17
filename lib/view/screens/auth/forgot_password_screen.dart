import '../../../utils/my_string.dart';
import '../../../utils/theme.dart';
import '../../widgets/auth/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/auth/auth_text_form_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});

  final formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
      appBar: AppBar(
        backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Forgot Password',
          style: TextStyle(
            color: Get.isDarkMode ? mainColor : pinkClr,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Get.isDarkMode ? Colors.black : Colors.white,
          ),
        ),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.close_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  'If you want to recover your account, then please provide your email ID below..',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Get.isDarkMode ? Colors.black : Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Image.asset(
                  'assets/images/forgetpass copy.png',
                  width: 250,
                ),
                const SizedBox(
                  height: 50.0,
                ),
                AuthTextFormField(
                  controller: emailController,
                  obscureText: false,
                  validator: (value) {
                    if (!RegExp(validationEmail).hasMatch(value)) {
                      return 'Invaild email';
                    } else {
                      return null;
                    }
                  },
                  prefixIcon: Get.isDarkMode
                      ? Image.asset('assets/images/email.png')
                      : const Icon(
                          Icons.email,
                          color: pinkClr,
                          size: 30.0,
                        ),
                  suffixIcon: const Text(''),
                  hintText: 'E-mail',
                ),
                const SizedBox(
                  height: 50.0,
                ),
                AuthButton(
                  text: 'SEND',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
