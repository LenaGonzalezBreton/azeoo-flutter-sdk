import 'package:dio/dio.dart';
import '../models/user_model.dart';

abstract class ProfileRemoteDataSource {
  Future<UserModel> fetchUser(int userId);
}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  final Dio client;

  ProfileRemoteDataSourceImpl(this.client);

  @override
  Future<UserModel> fetchUser(int userId) async {
    final response = await client.get(
      'https://api.azeoo.dev/v1/users/me',
      options: Options(
        headers: {
          'Accept-Language': 'fr-FR',
          'X-User-Id': userId.toString(),
          'Authorization': 'Bearer api_474758da8532e795f63bc4e5e6beca7298379993f65bb861f2e8e13c352cc4dcebcc3b10961a5c369edb05fbc0b0053cf63df1c53d9ddd7e4e5d680beb514d20',
        },
      ),
    );

    return UserModel.fromJson(response.data);
  }
}
