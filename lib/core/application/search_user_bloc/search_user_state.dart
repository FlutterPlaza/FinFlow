import 'package:fpb/core/domain/user.dart';

class SearchUserState {
  final bool isLoading;
  final List<User> users;
  final bool hasError;

  const SearchUserState(
      {required this.isLoading, required this.users, required this.hasError});

  factory SearchUserState.initial() {
    return SearchUserState(
      users: [],
      isLoading: false,
      hasError: false,
    );
  }

  factory SearchUserState.loading() {
    return SearchUserState(
      users: [],
      isLoading: true,
      hasError: false,
    );
  }

  factory SearchUserState.success(List<User> users) {
    return SearchUserState(
      users: users,
      isLoading: false,
      hasError: false,
    );
  }

  factory SearchUserState.error() {
    return SearchUserState(
      users: [],
      isLoading: false,
      hasError: true,
    );
  }

  @override
  String toString() =>
      'SearchUserState {users: ${users.toString()}, isLoading: $isLoading, hasError: $hasError }';
}
