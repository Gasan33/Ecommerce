import 'package:bloc_ecommerce/core/usecase/usecase.dart';
import 'package:bloc_ecommerce/domain/auth/repository/auth.dart';
import 'package:dartz/dartz.dart';

import '../../../service_locator.dart';

class GetAgesUseCase implements UseCase<Either, dynamic> {
  @override
  Future<Either> call({dynamic params}) async {
    return await sl<AuthRepository>().getAges();
  }
}
