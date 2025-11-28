import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../profile/domain/entities/user.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._(); // For custom getters

  const factory UserModel({
    required int id,
    @JsonKey(name: 'firstname') required String firstname,
    @JsonKey(name: 'lastname') required String lastname,
    @JsonKey(name: 'avatar') required String avatarUrl,
  }) = _UserModel;

  /// Convert JSON → UserModel
  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  /// Convert Model → Entity
  User toEntity() => User(
    id: id,
    firstname: firstname,
    lastname: lastname,
    avatarUrl: avatarUrl,
  );

  @override
  // TODO: implement avatarUrl
  String get avatarUrl => throw UnimplementedError();

  @override
  // TODO: implement firstname
  String get firstname => throw UnimplementedError();

  @override
  // TODO: implement id
  int get id => throw UnimplementedError();

  @override
  // TODO: implement lastname
  String get lastname => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
}
