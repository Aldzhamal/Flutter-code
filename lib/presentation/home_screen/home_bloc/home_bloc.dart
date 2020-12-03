import 'package:bloc/bloc.dart';



class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial());

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is Navigate) {
      yield Navigated();
    } /*else if (event is NavigateToSignUp) {
      yield NavigatedToSignUp();
    }*/
  }
}
