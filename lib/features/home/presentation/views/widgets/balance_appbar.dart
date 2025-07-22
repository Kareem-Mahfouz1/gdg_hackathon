import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_back_button.dart';

class BalanceAppbar extends StatelessWidget {
  const BalanceAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomBackButton(),
        Text(
          'Update Your Current Balance',
          style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
