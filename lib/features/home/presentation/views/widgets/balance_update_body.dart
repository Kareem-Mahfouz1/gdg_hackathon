import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../constants.dart';
import '../../../../../core/functions/input_validation.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import '../../cubits/balance_cubit/balance_cubit.dart';
import 'balance_appbar.dart';
import 'package:go_router/go_router.dart';

class BalanceUpdateBody extends StatelessWidget {
  const BalanceUpdateBody({super.key});
  static final TextEditingController newBalance = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 12),
            const BalanceAppbar(),
            const SizedBox(height: 40),
            CustomTextField(
              label: 'New Balance',
              controller: newBalance,
              validator: validateBalance,
            ),
            const SizedBox(height: 450),
            SizedBox(
              height: 57,
              width: double.infinity,
              child: BlocConsumer<BalanceCubit, BalanceState>(
                listener: (context, state) {
                  if (state is BalanceSuccess) {
                    GoRouter.of(context).go(AppRouter.kHomeView);
                  } else if (state is BalanceFailure) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(state.errMessage),
                      ),
                    );
                  }
                },
                builder: (context, state) {
                  return state is BalanceLoading
                      ? const Center(child: CircularProgressIndicator())
                      : CustomButton(
                          text: 'Save',
                          onPressed: () {
                            BlocProvider.of<BalanceCubit>(context)
                                .updateBalance(
                              addedBalance: int.parse(newBalance.text),
                            );
                          },
                        );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
