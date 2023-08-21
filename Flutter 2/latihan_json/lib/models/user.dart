import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class UserModel {
  int id;
  String email;
  String first_name;
  String last_name;
  String avatar;

  UserModel({
    required this.id,
    required this.email,
    required this.first_name,
    required this.last_name,
    required this.avatar,
  });

  factory UserModel.fromJson(Map<String, dynamic> data) => _$UserModelFromJson(data);
}