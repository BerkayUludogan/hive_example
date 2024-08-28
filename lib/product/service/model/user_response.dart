import 'package:equatable/equatable.dart';
import 'package:hive_example/product/cache/core/model/cache_model.dart';
import 'package:hive_example/product/service/model/user.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'user_response.g.dart';

@JsonSerializable()
final class UserResponse extends INetworkModel<UserResponse>
    with EquatableMixin, CacheModel<UserResponse> {
  UserResponse({
    this.id,
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    this.data,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
  final int? id;
  final int? page;
  final int? perPage;
  final int? total;
  final int? totalPages;
  final List<User>? data;

  @override
  UserResponse fromJson(Map<String, dynamic> json) =>
      UserResponse.fromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserResponseToJson(this);

  @override
  List<Object?> get props => [id, page, perPage, total, totalPages, data];

  UserResponse copyWith({
    int? id,
    int? page,
    int? perPage,
    int? total,
    int? totalPages,
    List<User>? data,
  }) {
    return UserResponse(
      id: id ?? this.id,
      page: page ?? this.page,
      perPage: perPage ?? this.perPage,
      total: total ?? this.total,
      totalPages: totalPages ?? this.totalPages,
      data: data ?? this.data,
    );
  }

  @override
  String get cacheId => id.toString();
}
