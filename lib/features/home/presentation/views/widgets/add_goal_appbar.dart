import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_back_button.dart';

class AddGoalAppbar extends StatelessWidget {
  const AddGoalAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomBackButton(),
        const Spacer(flex: 2),
        Center(
          child: Text(
            'Add Goal',
            style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        const Spacer(flex: 3)
      ],
    );
  }
}
