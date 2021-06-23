import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:payflownlw6/shared/themes/app_colors.dart';
import 'package:payflownlw6/shared/themes/app_images.dart';
import 'package:payflownlw6/shared/themes/app_text_styles.dart';
import 'package:payflownlw6/shared/widgets/social_login/social_login_button.dart';

import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final sizePage = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        //color: Colors.red,
        height: sizePage.height,
        width: sizePage.width,
        child: Stack(
          children: [
            Container(
              color: AppColors.primary,
              height: MediaQuery.of(context).size.height * 0.36,
            ),
            Positioned(
              top: 40,
              left: 0,
              right: 0,
              child: Image.asset(
                AppImages.person,
                width: 208,
                height: 300,
              ),
            ),
            Positioned(
              bottom: sizePage.height * 0.06,
              top: 0,
              right: 0,
              left: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImages.logomini),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 70, right: 69, top: 20, bottom: 20),
                    child: Text(
                      "Organize seus boletos em um só lugar",
                      style: AppTextStyles.titleHome,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: SocialLoginButton(
                      onTap: () async {
                        final LoginController _login = LoginController();
                        await _login.googleSignIn();
                      }
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
