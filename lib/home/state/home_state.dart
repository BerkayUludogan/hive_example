import 'package:equatable/equatable.dart';
import 'package:hive_example/product/service/model/user.dart';

final class HomeState extends Equatable {
  const HomeState({required this.loading, this.users});

  final List<User>? users;
  final bool loading;

  @override
  List<Object?> get props => [users, loading];

  HomeState copyWith({bool loading = false, List<User>? users}) {
    return HomeState(
      loading: loading,
      users: users ?? this.users,
    );
  }
}
