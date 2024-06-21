part of 'response_cubit.dart';

@immutable
sealed class ResponseState {}

final class ResponseInitial extends ResponseState {}

final class ResponseLooding extends ResponseState {}

final class ResponseSuccess extends ResponseState {
  final String response;

  ResponseSuccess({required this.response});
}
