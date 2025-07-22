import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../../constants.dart';
import '../../../../../core/models/user.dart';
import '../../../../../core/utils/app_router.dart';
import 'package:go_router/go_router.dart';

class AddGoalActionButton extends StatelessWidget {
  const AddGoalActionButton({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const CircleBorder(),
      backgroundColor: kPrimaryColor,
      onPressed: () {
        GoRouter.of(context).push(AppRouter.kAddGoalView, extra: user);
      },
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}
