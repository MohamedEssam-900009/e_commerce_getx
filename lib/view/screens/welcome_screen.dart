import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/routes.dart';
import '../../utils/theme.dart';
import '../widgets/text_utils.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.2),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100.0,
                ),
                Container(
                  height: 60.0,
                  width: 190.0,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: const Center(
                    child: TextUtils(
                      text: 'Welcome',
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      underline: TextDecoration.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 60.0,
                  width: 290.0,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      TextUtils(
                        text: 'Mohamed',
                        color: mainColor,
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                        underline: TextDecoration.none,
                      ),
                      SizedBox(
                        width: 7.0,
                      ),
                      TextUtils(
                        text: 'Shop',
                        color: Colors.white,
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                        underline: TextDecoration.none,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 250.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: mainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40.0,
                      vertical: 12.0,
                    ),
                  ),
                  onPressed: () {
                    Get.offNamed(Routes.loginScreen);
                  },
                  child: const TextUtils(
                    text: 'Get Start',
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    underline: TextDecoration.none,
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TextUtils(
                      text: 'Don\'t have an Account?',
                      fontSize: 18.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      underline: TextDecoration.none,
                    ),
                    TextButton(
                      onPressed: () {
                        Get.offNamed(Routes.signUpScreen);
                      },
                      child: const TextUtils(
                        text: 'Sign Up',
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                        underline: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
