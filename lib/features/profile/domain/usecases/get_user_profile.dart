import '../entities/user.dart';
import '../repositories/profile_repository.dart';

class GetUserProfile {
  final ProfileRepository repo;

  GetUserProfile(this.repo);

  Future<User> call(int userId) {
    return repo.getUser(userId);
  }
}
