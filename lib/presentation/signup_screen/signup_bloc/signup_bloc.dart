import 'package:bloc/bloc.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(SignupInitial());

  @override
  Stream<SignupState> mapEventToState(SignupEvent event) async* {
    if (event is NavigateToLogin) {
      yield NavigatedToLogin();
    }
  }
}
