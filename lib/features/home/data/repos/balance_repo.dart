import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/utils/web_services.dart';

class BalanceRepo {
  WebService webService = WebService();
  Future<Either<Failure, Map<String, dynamic>>> updateBalance(
      {required int addedBalance}) async {
    return await webService.updateBalance(addedBalance: addedBalance);
  }
}
