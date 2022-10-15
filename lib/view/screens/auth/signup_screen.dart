import 'package:e_commerce_getx/utils/theme.dart';
import 'package:e_commerce_getx/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';

import '../../widgets/auth/auth_text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
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
                      children: const [
                        TextUtils(
                          text: 'SIGN',
                          fontSize: 28.0,
                          fontWeight: FontWeight.w500,
                          color: mainColor,
                        ),
                        SizedBox(
                          width: 3.0,
                        ),
                        TextUtils(
                          text: 'UP',
                          fontSize: 28.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    AuthTextFormField(
                      controller: nameController,
                      obscureText: false,
                      validator: () {},
                      prefixIcon: Image.asset('assets/images/user.png'),
                      suffixIcon: const Text(''),
                      hintText: 'User Name',
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    AuthTextFormField(
                      controller: emailController,
                      obscureText: false,
                      validator: () {},
                      prefixIcon: Image.asset('assets/images/email.png'),
                      suffixIcon: const Text(''),
                      hintText: 'E-mail',
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    AuthTextFormField(
                      controller: passwordController,
                      obscureText: true,
                      validator: () {},
                      prefixIcon: Image.asset('assets/images/lock.png'),
                      suffixIcon: const Text(''),
                      hintText: 'Password',
                    ),
                    const SizedBox(
                      height: 20.0,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
