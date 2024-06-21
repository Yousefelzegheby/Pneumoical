part of 'login_cubit.dart';

sealed class LoginState {}

class LoginInitial extends LoginState {}

class LoginSucces extends LoginState {}

class LoginFaliur extends LoginState {
  final String emessage;
  LoginFaliur({required this.emessage});
}

class LoginLooding extends LoginState {}
