import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordHideCubit extends Cubit<bool>{
  PasswordHideCubit():super(false);

  bool showPasswordVar =false;

  void showPassword(bool showPass) {
    showPasswordVar = showPass;
    emit(showPass);
  }

}