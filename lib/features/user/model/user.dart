import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User(
      {required String id,
      required String username,
      String? email,
      String? name}) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class NewUser with _$NewUser {
  factory NewUser(
      {required String email,
      required String password,
      required String passwordConfirm,
      required String name}) = _NewUser;

  factory NewUser.fromJson(Map<String, dynamic> json) =>
      _$NewUserFromJson(json);
}
