import 'package:bloc/bloc.dart';
import '../../../data/repos/balance_repo.dart';
import 'package:meta/meta.dart';

part 'balance_state.dart';

class BalanceCubit extends Cubit<BalanceState> {
  BalanceCubit(this.balanceRepo) : super(BalanceInitial());
  final BalanceRepo balanceRepo;
  Future<void> updateBalance({required int addedBalance}) async {
    emit(BalanceLoading());
    var response = await balanceRepo.updateBalance(addedBalance: addedBalance);
    response.fold(
      (l) {
        emit(BalanceFailure(errMessage: l.errMessage));
      },
      (r) {
        emit(BalanceSuccess());
      },
    );
  }
}
