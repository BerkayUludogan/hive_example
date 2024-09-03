import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login.g.dart';

@JsonSerializable()
class Login with EquatableMixin {
  Login({
    this.username,
    this.password,
  });

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);
  String? username;
  String? password;

  Map<String, dynamic> toJson() => _$LoginToJson(this);

  @override
  List<Object?> get props => [username, password];

  Login copyWith({
    String? username,
    String? password,
  }) {
    return Login(
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }
}
