import 'package:json_annotation/json_annotation.dart';

part 'app_user.g.dart';

@JsonSerializable(
  nullable: false,
  fieldRename: FieldRename.snake,
)
class AppUser {
  final int id;
  final String avatar;
  final String username;
  final String role;
  final String firstName;
  final String middleName;
  final String lastName;
  final String fullName;
  final String email;
  final String phoneNumber;
  final String timeZone;

  AppUser({
    this.id,
    this.avatar: "",
    this.username: "",
    this.role: "",
    this.fullName: "",
    this.firstName: "",
    this.middleName: "",
    this.lastName: "",
    this.email: "",
    this.phoneNumber: "",
    this.timeZone: "",
  });

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
  Map<String, dynamic> toJson() => _$AppUserToJson(this);
}
