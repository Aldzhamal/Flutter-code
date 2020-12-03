import 'package:bloc/bloc.dart';



class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  ResetPasswordBloc() : super(ResetPasswordInitial());

  @override
  Stream<ResetPasswordState> mapEventToState(ResetPasswordEvent event) async* {
    if (event is NavigateToLogin) {
      yield NavigatedToLogin();
    }
  }
}
