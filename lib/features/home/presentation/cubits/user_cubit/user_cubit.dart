import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../../../core/models/user.dart';
import '../../../data/repos/user_repo.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this.userRepo) : super(UserInitial());
  final UserRepo userRepo;

  Future<void> getUser() async {
    emit(UserLoading());
    var response = await userRepo.getUser();
    response.fold(
      (l) {
        emit(UserFailure(errMessage: l.errMessage));
      },
      (r) {
        emit(UserSuccess(user: User.fromJson(r)));
      },
    );
  }
}
