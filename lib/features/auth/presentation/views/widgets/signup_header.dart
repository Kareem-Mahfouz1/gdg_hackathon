import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class SignupHeader extends StatelessWidget {
  const SignupHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Sign Up',
            style: Styles.textStyle36,
          ),
          Text(
            'welcome to FinTrack',
            style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
