part of 'signup_cubit.dart';

@immutable
abstract class SignupState {}

class SignupInitial extends SignupState {}

class SignupLoaded extends SignupState {}

class SignupSuccess extends SignupState {}

class SignupError extends SignupState {
  final error;

  SignupError(this.error);
}

class SignUpPasswordVisibilty extends SignupState {}
