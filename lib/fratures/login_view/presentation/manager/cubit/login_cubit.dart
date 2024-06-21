import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  Future<void> login({required String email, required String passward}) async {
    emit(LoginLooding());
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: passward);
      emit(LoginSucces());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(LoginFaliur(emessage: 'user-not-found'));
      } else if (e.code == 'wrong-password') {
        emit(LoginFaliur(emessage: 'wrong-password'));
      } else if (e.code == 'invalid-email') {
        emit(LoginFaliur(emessage: 'invalid-email'));
      } else if (e.code == 'user-disabled') {
        emit(LoginFaliur(emessage: 'user-disabled'));
      } else {
        emit(LoginFaliur(emessage: 'wrong email or password'));
      }
    } catch (e) {
      emit(LoginFaliur(emessage: 'there is an error'));
      // print('fire ${e.toString()}');
    }
  }
}
