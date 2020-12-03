import 'package:bloc/bloc.dart';


class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is NavigateToRegister) {
      yield NavigatedToRegister();
    } else if (event is NavigateToForgotPassword) {
      yield NavigatedToForgotPassword();
    } else if (event is LogIn) {
      yield LoggedIn();
    } else if (event is UpdateState) {
	  yield StateUpdated();
	}
  }
}
