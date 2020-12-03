import 'package:bloc/bloc.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(SettingsInitial());

  @override
  Stream<SettingsState> mapEventToState(SettingsEvent event) async* {
    if (event is Navigate) {
      yield Navigated();
    }
    /*else if (event is NavigateToSignUp) {
      yield NavigatedToSignUp();
    }*/
  }
}
