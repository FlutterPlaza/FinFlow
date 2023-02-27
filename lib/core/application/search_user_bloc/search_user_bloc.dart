import 'package:bloc/bloc.dart';
import 'package:fpb/core/application/search_user_bloc/search_user_state.dart';
import 'package:fpb/core/domain/user.dart';

part 'search_user_event.dart';

class SearchUserBloc extends Bloc<SearchUserEvent, SearchUserState> {
  SearchUserBloc(super.initialState);

  @override
  SearchUserState get initialState => SearchUserState.initial();

  @override
  void onTransition(Transition<SearchUserEvent, SearchUserState> transition) {
    print(transition.toString());
  }

  @override
  Stream<SearchUserState> mapEventToState(SearchUserEvent event) async* {
    yield SearchUserState.loading();

    try {
      List<User> users = await _getSearchResults(event.query);
      yield SearchUserState.success(users);
    } catch (_) {
      yield SearchUserState.error();
    }
  }

  Future<List<User>> _getSearchResults(String query) async {
    // Simulating network latency
    await Future.delayed(Duration(seconds: 1));
    return [
      User(
        id: '108904873933543363282',
        isNewUser: true,
        photo:
            "https://lh3.googleusercontent.com/a/AEdFTp7RAnM35n8dIcB7eZo4tAjXnJynSB7pFKcA5sMzdw=s96-c",
        providerId: "providerId",
        name: "Desking",
        email: "desking2000@gmail.com",
        phoneNumber: "676186454",
      ),
      User(
        id: '108904873933243543363282',
        isNewUser: true,
        photo:
            "https://lh3.googleusercontent.com/a/AEdFTp7RAnM35n8dIcB7eZo4tAjXnJynSB7pFKcA5sMzdw=s96-c",
        providerId: "providerId",
        name: "Desmond Tambe",
        email: "dezzy@gmail.com",
        phoneNumber: "676186454",
      ),
      User(
        id: '10890487393323543363282',
        isNewUser: true,
        photo:
            "https://lh3.googleusercontent.com/a/AEdFTp7RAnM35n8dIcB7eZo4tAjXnJynSB7pFKcA5sMzdw=s96-c",
        providerId: "providerId",
        name: "Desmond Tambe",
        email: "dezzy@gmail.com",
        phoneNumber: "676186454",
      )
    ];
  }
}
