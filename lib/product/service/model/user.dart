import 'package:equatable/equatable.dart';
import 'package:hive_example/product/cache/core/model/cache_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends INetworkModel<User> with EquatableMixin, CacheModel<User> {
  User({
    this.id,
    this.email,
    this.first_name,
    this.last_name,
    this.avatar,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  final int? id;
  final String? email;
  final String? first_name;
  final String? last_name;
  final String? avatar;

  @override
  User fromJson(Map<String, dynamic> json) => User.fromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  List<Object?> get props => [id, email, first_name, last_name, avatar];

  User copyWith({
    int? id,
    String? email,
    String? first_name,
    String? last_name,
    String? avatar,
  }) {
    return User(
      id: id ?? this.id,
      email: email ?? this.email,
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      avatar: avatar ?? this.avatar,
    );
  }

  @override
  String get cacheId => id.toString();
}
