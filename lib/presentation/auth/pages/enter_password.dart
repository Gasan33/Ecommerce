import 'package:bloc_ecommerce/common/bloc/button/button_state.dart';
import 'package:bloc_ecommerce/common/bloc/button/button_state_cubit.dart';
import 'package:bloc_ecommerce/common/helper/navigator/app_navigator.dart';
import 'package:bloc_ecommerce/common/widgets/appbar/app_bar.dart';
import 'package:bloc_ecommerce/common/widgets/button/basic_reactive_button.dart';
import 'package:bloc_ecommerce/data/auth/models/user_signin_req.dart';
import 'package:bloc_ecommerce/domain/auth/usecases/signin.dart';
import 'package:bloc_ecommerce/presentation/auth/bloc/password_hide_cubit.dart';
import 'package:bloc_ecommerce/presentation/auth/pages/forget_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EnterPasswordPage extends StatelessWidget {
  EnterPasswordPage({super.key, required this.userSigninReq});

  final UserSigninReq userSigninReq;
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => PasswordHideCubit(),
            ),
            BlocProvider(
              create: (context) => ButtonStateCubit(),
            ),
          ],
          child: BlocListener<ButtonStateCubit, ButtonState>(
            listener: (context, state) {
              if (state is ButtonFailureState){
                var snackbar = SnackBar(content: Text(state.errorMessage),behavior: SnackBarBehavior.floating,);
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
              }
              if (state is ButtonSuccessState){

              }
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _signinText(context),
                const SizedBox(height: 20),
                _passwordField(context),
                const SizedBox(height: 20),
                _continueButton(context),
                const SizedBox(height: 20),
                _forgetPassword(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _signinText(BuildContext context) {
    return const Text(
      "Sign in",
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _passwordField(BuildContext context) {
    return BlocBuilder<PasswordHideCubit, bool>(
      builder: (context, state) {
        return TextField(
          controller: _passwordController,
          obscureText: context.read<PasswordHideCubit>().showPasswordVar,
          decoration: InputDecoration(
            prefixIcon: IconButton(
              onPressed: () {
                context.read<PasswordHideCubit>().showPassword(
                    !context.read<PasswordHideCubit>().showPasswordVar);
              },
              icon: const Icon(CupertinoIcons.eye_slash_fill),
            ),
            hintText: 'Enter Password',
          ),
        );
      },
    );
  }

  Widget _continueButton(BuildContext context) {
    return Builder(
      builder: (context) {
        return BasicReactiveButton(
          onPressed: () {
            userSigninReq.password=_passwordController.text;
            context.read<ButtonStateCubit>().execute(usecase: SigninUseCase(),params: userSigninReq);
          },
          title: 'continue',
        );
      }
    );
  }

  Widget _forgetPassword(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      const TextSpan(
        text: "Forget Password? ",
      ),
      TextSpan(
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              AppNavigator.push(context,  ForgetPasswordPage());
            },
          text: 'Reset',
          style: const TextStyle(fontWeight: FontWeight.bold))
    ]));
  }
}
