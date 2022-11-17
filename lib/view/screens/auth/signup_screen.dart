import '../../../routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../logic/controller/auth_controller.dart';
import '../../../utils/my_string.dart';
import '../../../utils/theme.dart';
import '../../widgets/auth/auth_button.dart';
import '../../widgets/auth/auth_text_form_field.dart';
import '../../widgets/auth/check_widget.dart';
import '../../widgets/auth/container_under.dart';
import '../../widgets/text_utils.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
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
                            text: 'SIGN',
                            fontSize: 28.0,
                            fontWeight: FontWeight.w500,
                            color: Get.isDarkMode ? mainColor : pinkClr,
                            underline: TextDecoration.none,
                          ),
                          const SizedBox(
                            width: 3.0,
                          ),
                          TextUtils(
                            text: 'UP',
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
                        controller: nameController,
                        obscureText: false,
                        validator: (value) {
                          if (value.toString().length <= 2 ||
                              !RegExp(validationName).hasMatch(value)) {
                            return 'Enter vaild name';
                          } else {
                            return null;
                          }
                        },
                        prefixIcon: Get.isDarkMode
                            ? Image.asset('assets/images/user.png')
                            : const Icon(
                                Icons.person,
                                color: pinkClr,
                                size: 30,
                              ),
                        suffixIcon: const Text(''),
                        hintText: 'User Name',
                      ),
                      const SizedBox(
                        height: 20.0,
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
                      const SizedBox(
                        height: 50.0,
                      ),
                      CheckWidget(),
                      const SizedBox(
                        height: 50.0,
                      ),
                      AuthButton(
                        text: 'SIGN UP',
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
              ),
              ContainerUnder(
                text: 'Already have an Account? ',
                textType: 'Log in',
                onPressed: () {
                  Get.offNamed(Routes.loginScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
