part of 'search_user_bloc.dart';

class SearchUserEvent {
  final String query;

  const SearchUserEvent(this.query);

  @override
  String toString() => 'SearchUserEvent { query: $query }';
}
