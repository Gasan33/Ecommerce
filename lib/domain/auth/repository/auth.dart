import 'package:bloc_ecommerce/data/auth/models/user_creation_req.dart';
import 'package:bloc_ecommerce/data/auth/models/user_signin_req.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository{
  Future<Either> signup(UserCreationReq user);
  Future<Either> signin(UserSigninReq user);
  Future<Either> getAges();
  Future<Either> sendPasswordResetEmail(String email);
}