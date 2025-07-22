import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/models/user.dart';
import '../../../../../core/utils/styles.dart';
import 'add_goal_action_button.dart';
import 'goals_item.dart';

class GoalsBody extends StatelessWidget {
  const GoalsBody({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 12),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'My goals',
                      style: Styles.textStyle20,
                    )
                  ],
                ),
                const SizedBox(height: 32),
                ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: const [
                    GoalsItem(perc: 20, title: 'Vacation', duration: 1),
                    GoalsItem(perc: 29, title: 'Education', duration: 5),
                    GoalsItem(perc: 78, title: 'Laptop', duration: 2),
                    GoalsItem(perc: 25, title: 'Cloths', duration: 1),
                    GoalsItem(perc: 9, title: 'Food', duration: 3),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            right: 0,
            child: AddGoalActionButton(user: user),
          )
        ],
      ),
    );
  }
}
