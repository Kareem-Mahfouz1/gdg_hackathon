import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repos/balance_repo.dart';
import '../cubits/balance_cubit/balance_cubit.dart';
import 'widgets/balance_update_body.dart';

class BalanceUpdateView extends StatelessWidget {
  const BalanceUpdateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => BalanceCubit(BalanceRepo()),
          child: const BalanceUpdateBody(),
        ),
      ),
    );
  }
}
