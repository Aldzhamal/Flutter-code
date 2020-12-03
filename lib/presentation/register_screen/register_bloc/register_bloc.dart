import 'package:bloc/bloc.dart';


class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterInitial());

  @override
  Stream<RegisterState> mapEventToState(RegisterEvent event) async* {
    if (event is NavigateToSignUp) {
      yield NavigatedToSignUp();
    }
  }
}
