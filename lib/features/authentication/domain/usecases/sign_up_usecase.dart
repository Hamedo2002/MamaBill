import 'package:dartz/dartz.dart';
import 'package:mama_bill/core/data/error/failure.dart';
import 'package:mama_bill/core/domain/usecase/usecase.dart';
import 'package:mama_bill/features/authentication/domain/entities/user_profile.dart';
import 'package:mama_bill/features/authentication/domain/repositories/auth_repository.dart';

class SignUpUseCase extends UseCase<Unit, UserProfile> {
  SignUpUseCase(this.repository);
  final AuthRepository repository;
  @override
  Future<Either<Failure, Unit>> call(UserProfile params) async {
    return await repository.createUserWithEmailAndPassword(params);
  }
}
