part of 'sign_up_cubit.dart';

@immutable
sealed class SignUpState {}

class RegisterScreenCubitInitial extends SignUpState {}

class RegisterSuccesState extends SignUpState {}

class RegisterFaliurState extends SignUpState {
  final String? erMesssage;
  RegisterFaliurState({@required this.erMesssage});
}

class RegisterLoodingState extends SignUpState {}
