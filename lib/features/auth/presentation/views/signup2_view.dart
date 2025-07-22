import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/user_signup.dart';
import '../../data/repos/signup_repo.dart';
import '../cubits/signup_cubit/signup_cubit.dart';
import 'widgets/signup2_body.dart';

class Signup2View extends StatelessWidget {
  const Signup2View({super.key, required this.user});
  final UserSignup user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BlocProvider(
        create: (context) => SignupCubit(SignupRepo()),
        child: Signup2Body(user: user),
      )),
    );
  }
}
