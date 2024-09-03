import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse with EquatableMixin {
  LoginResponse({
    this.id,
    this.username,
    this.password,
    this.token,
  });
  factory LoginResponse.fake() {
    return LoginResponse(
      id: 1,
      username: 'Berkay',
      password: 'qşlwdöşqlwödşqlwd',
      token: 'com',
    );
  }
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
  int? id;
  String? username;
  String? password;
  String? token;

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);

  @override
  List<Object?> get props => [id, username, password, token];

  LoginResponse copyWith({
    int? id,
    String? username,
    String? password,
    String? token,
  }) {
    return LoginResponse(
      id: id ?? this.id,
      username: username ?? this.username,
      password: password ?? this.password,
      token: token ?? this.token,
    );
  }
}
