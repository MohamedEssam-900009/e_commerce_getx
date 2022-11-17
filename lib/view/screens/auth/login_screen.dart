import 'package:e_commerce_getx/utils/my_string.dart';
import 'package:e_commerce_getx/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../logic/controller/auth_controller.dart';
import '../../../routes/routes.dart';
import '../../widgets/auth/auth_button.dart';
import '../../widgets/auth/auth_text_form_field.dart';
import '../../widgets/auth/container_under.dart';
import '../../widgets/text_utils.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final controller = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
      appBar: AppBar(
        backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.3,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 25.0, right: 25.0, top: 40.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          TextUtils(
                            text: 'LOG',
                            fontSize: 28.0,
                            fontWeight: FontWeight.w500,
                            color: Get.isDarkMode ? mainColor : pinkClr,
                            underline: TextDecoration.none,
                          ),
                          const SizedBox(
                            width: 3.0,
                          ),
                          TextUtils(
                            text: 'IN',
                            fontSize: 28.0,
                            fontWeight: FontWeight.w500,
                            color: Get.isDarkMode ? Colors.black : Colors.white,
                            underline: TextDecoration.none,
                          ),
                        ],
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
                        height: 20.0,
                      ),
                      GetBuilder<AuthController>(
                        builder: (_) {
                          return AuthTextFormField(
                            controller: passwordController,
                            obscureText: controller.isVisibilty ? false : true,
                            validator: (value) {
                              if (value.toString().length < 6) {
                                return 'Password should be longer or equal to 6 characters';
                              } else {
                                return null;
                              }
                            },
                            prefixIcon: Get.isDarkMode
                                ? Image.asset('assets/images/lock.png')
                                : const Icon(
                                    Icons.lock,
                                    color: pinkClr,
                                    size: 30,
                                  ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                controller.visibility();
                              },
                              icon: controller.isVisibilty
                                  ? const Icon(
                                      Icons.visibility,
                                      color: Colors.black,
                                    )
                                  : const Icon(
                                      Icons.visibility_off,
                                      color: Colors.black,
                                    ),
                            ),
                            hintText: 'Password',
                          );
                        },
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: TextUtils(
                            text: 'Forgot Password?',
                            fontSize: 14.0,
                            fontWeight: FontWeight.normal,
                            color: Get.isDarkMode ? Colors.black : Colors.white,
                            underline: TextDecoration.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      AuthButton(
                        text: 'LOG IN',
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextUtils(
                        text: 'OR',
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        color: Get.isDarkMode ? Colors.black : Colors.white,
                        underline: TextDecoration.none,
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Image.asset('assets/images/facebook.png'),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Image.asset('assets/images/google.png'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ContainerUnder(
                text: 'Don\'t have an Account? ',
                textType: 'Sign Up',
                onPressed: () {
                  Get.offNamed(Routes.signUpScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
