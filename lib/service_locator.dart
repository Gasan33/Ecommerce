import 'package:bloc_ecommerce/data/auth/repository/auth_repository_impl.dart';
import 'package:bloc_ecommerce/data/auth/source/auth_firebase_service.dart';
import 'package:bloc_ecommerce/domain/auth/repository/auth.dart';
import 'package:bloc_ecommerce/domain/auth/usecases/get_ages.dart';
import 'package:bloc_ecommerce/domain/auth/usecases/send_password_reset_email.dart';
import 'package:bloc_ecommerce/domain/auth/usecases/signin.dart';
import 'package:bloc_ecommerce/domain/auth/usecases/signup.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Services
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());

  // Repositories
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  // Use cases
  sl.registerSingleton<SignupUseCase>(SignupUseCase());
  sl.registerSingleton<GetAgesUseCase>(GetAgesUseCase());
  sl.registerSingleton<SigninUseCase>(SigninUseCase());
  sl.registerSingleton<SendPasswordResetEmailUseCase>(SendPasswordResetEmailUseCase());

}