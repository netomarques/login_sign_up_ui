import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_sign_up_ui/utils/utils.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pop(),
      borderRadius: BorderRadius.circular(35.0),
      child: Container(
        height: 35.0,
        width: 35.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kDarkPurple,
        ),
        child: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size: 20.0,
        ),
      ),
    );
  }
}
