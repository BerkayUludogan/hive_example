import 'package:equatable/equatable.dart';
import 'package:hive_example/product/cache/core/model/cache_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'register.g.dart';

@JsonSerializable()
class Register with EquatableMixin, CacheModel<Register> {
  Register({
    this.id,
    this.username,
    this.password,
  });

  factory Register.fromJson(Map<String, dynamic> json) =>
      _$RegisterFromJson(json);
  int? id;
  String? username;
  String? password;

  @override
  Map<String, dynamic> toJson() => _$RegisterToJson(this);

  @override
  List<Object?> get props => [id, username, password];

  Register copyWith({
    int? id,
    String? username,
    String? password,
  }) {
    return Register(
      id: id ?? this.id,
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }

  @override
  String get cacheId => id.toString();

  @override
  Register fromJson(Map<String, dynamic> json) => _$RegisterFromJson(json);
}
