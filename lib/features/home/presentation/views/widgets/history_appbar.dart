import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_back_button.dart';

class HistoryAppbar extends StatelessWidget {
  const HistoryAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomBackButton(),
        Text(
          'Your History',
          style: Styles.textStyle20,
        ),
        Icon(Icons.list)
      ],
    );
  }
}
