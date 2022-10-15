import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce Get-X',
      // theme: ThemeData(
      //   primaryColor: Colors.blue,
      // ),
      initialRoute: AppRoutes.welcome,
      getPages: AppRoutes.routes,
    );
  }
}
