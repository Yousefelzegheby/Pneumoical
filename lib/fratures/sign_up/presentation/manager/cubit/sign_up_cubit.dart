import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(RegisterScreenCubitInitial());
  Future<void> user({required String email, required String passward}) async {
    emit(RegisterLoodingState());
    try {
      UserCredential user = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: passward);
      emit(RegisterSuccesState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak passward') {
        emit(RegisterFaliurState(erMesssage: 'weak passward'));
      } else if (e.code == 'email-already-in-use') {
        emit(RegisterFaliurState(erMesssage: 'email-already-in-use'));
      } else {
        emit(RegisterFaliurState(erMesssage: e.toString()));
      }
    } catch (e) {
      emit(RegisterFaliurState(erMesssage: e.toString()));
    }
  }
}
