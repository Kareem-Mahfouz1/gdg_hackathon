import 'package:flutter/material.dart';
import '../../../../core/models/user.dart';
import 'widgets/add_goal_body.dart';

class AddGoalView extends StatelessWidget {
  const AddGoalView({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: AddGoalBody(user: user)),
    );
  }
}
