import 'package:bloc_ecommerce/core/usecase/usecase.dart';
import 'package:bloc_ecommerce/domain/auth/repository/auth.dart';
import 'package:dartz/dartz.dart';
import '../../../service_locator.dart';

class SendPasswordResetEmailUseCase implements UseCase<Either, String> {
  @override
  Future<Either> call({String? params})async {
    return sl<AuthRepository>().sendPasswordResetEmail(params!);
  }

}
