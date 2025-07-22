import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/utils/web_services.dart';

class LoginRepo {
  WebService webService = WebService();
  Future<Either<Failure, Map<String, dynamic>>> loginUser(
      {required String email, required String password}) async {
    return await webService.login(email: email, password: password);
  }
}
