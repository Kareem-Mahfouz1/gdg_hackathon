import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/utils/web_services.dart';
import '../models/user_signup.dart';

class SignupRepo {
  WebService webService = WebService();
  Future<Either<Failure, Map<String, dynamic>>> signupUser(
      {required UserSignup user}) async {
    return await webService.signup(user: user);
  }
}
