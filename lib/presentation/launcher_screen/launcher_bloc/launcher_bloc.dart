import 'package:bloc/bloc.dart';


class LauncherBloc extends Bloc<LauncherEvent, LauncherState> {
  LauncherBloc() : super(LauncherInitial());

  @override
  Stream<LauncherState> mapEventToState(LauncherEvent event) async* {
    if (event is NavigateToLogIn) {
      yield NavigatedToLogIn();
    } else if (event is NavigateToRegister) {
      yield NavigatedToRegister();
    } else if (event is UpdateState) {
      yield StateUpdated();
    }
  }
}
