import 'package:bloc/bloc.dart';


class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainInitial());

  @override
  Stream<MainState> mapEventToState(MainEvent event) async* {
    if (event is JumpToPage) {
      yield JumpedToPage(event.page);
    }
  }
}
