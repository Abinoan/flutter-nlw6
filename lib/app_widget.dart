import 'package:flutter/material.dart';
import 'package:payflownlw6/modules/login/login.dart';
//import 'package:payflownlw6/modules/splash/splash_page.dart';
//import 'modules/login/login.dart';
import 'shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PayFlow',
        theme: ThemeData(
          primaryColor: AppColors.primary,
        ),
        home: LoginPage() //MyHomePage(title: 'Flutter Home Page'),
        );
  }
}
