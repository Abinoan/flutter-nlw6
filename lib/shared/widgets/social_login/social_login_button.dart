import 'package:flutter/material.dart';

import 'package:payflownlw6/shared/themes/app_colors.dart';
import 'package:payflownlw6/shared/themes/app_images.dart';
import 'package:payflownlw6/shared/themes/app_text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  final VoidCallback onTap;
  const SocialLoginButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.0589,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
            color: AppColors.shape,
            borderRadius: BorderRadius.circular(5),
            border: Border.fromBorderSide(BorderSide(color: AppColors.stroke))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                    width: 1,
                    height: 56,
                    color: AppColors.stroke.withAlpha(100),
                    child: Image.asset(AppImages.google))),
            Expanded(
                flex: 4,
                child: Text("Entrar com Google",
                    textAlign: TextAlign.center,
                    style: AppTextStyles.buttonGray))
          ],
        ),
      ),
    );
  }
}
