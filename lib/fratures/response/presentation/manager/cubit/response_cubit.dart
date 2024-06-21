import 'package:bloc/bloc.dart';
import 'package:kook/core/utilies/static_const.dart';
import 'package:meta/meta.dart';

part 'response_state.dart';

class ResponseCubit extends Cubit<ResponseState> {
  ResponseCubit() : super(ResponseInitial());
  void response() {
    emit(ResponseLooding());
    try {
      bool containshave =
          Static.have.every((item) => Static.app.contains(item));
      bool containsPropability =
          Static.propability.every((item) => Static.app.contains(item));

      if (containshave && containsPropability) {
        emit(ResponseSuccess(response: Static.youHave));
      } else if (containshave) {
        emit(ResponseSuccess(response: Static.havefirist));
      } else if (containsPropability) {
        emit(ResponseSuccess(response: Static.highSuspesion));
      } else {
        emit(ResponseSuccess(response: Static.dontHave));
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
