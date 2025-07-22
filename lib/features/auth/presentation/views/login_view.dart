import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repos/login_repo.dart';
import '../cubits/login_cubit/login_cubit.dart';
import 'widgets/login_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(LoginRepo()),
      child: const Scaffold(
        body: SafeArea(
          child: LoginBody(),
        ),
      ),
    );
  }
}
