part of 'login_c_cubit.dart';

@immutable
abstract class LoginCState {}

class LoginCInitial extends LoginCState {}

class LoginCError extends LoginCState {
  final error;

  LoginCError(this.error);
}

class LoginCLoaded extends LoginCState {}

class LoginCSuccess extends LoginCState {}

class LoginCPasswordVisibilty extends LoginCState {}
