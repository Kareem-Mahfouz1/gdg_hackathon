import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/utils/web_services.dart';

class UserRepo {
  WebService webService = WebService();

  Future<Either<Failure, Map<String, dynamic>>> getUser() async {
    return await webService.getUser();
  }
}
