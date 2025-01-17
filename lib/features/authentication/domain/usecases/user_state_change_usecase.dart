import 'package:firebase_auth/firebase_auth.dart';
import 'package:mama_bill/features/authentication/domain/repositories/auth_repository.dart';

class UserStateChangeUseCase {
  final AuthRepository repository;

  UserStateChangeUseCase(this.repository);

  Stream<User?> call() {
    return repository.userStateChange();
  }
}
