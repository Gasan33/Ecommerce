import 'package:bloc_ecommerce/core/usecase/usecase.dart';
import 'package:bloc_ecommerce/data/auth/models/user_creation_req.dart';
import 'package:bloc_ecommerce/domain/auth/repository/auth.dart';
import 'package:dartz/dartz.dart';

import '../../../service_locator.dart';

class SignupUseCase implements UseCase<Either, UserCreationReq> {
  @override
  Future<Either> call({UserCreationReq? params}) async {
    return await sl<AuthRepository>().signup(params!);
  }
}
