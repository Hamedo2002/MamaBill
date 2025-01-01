import 'package:dartz/dartz.dart';
import 'package:mama_bill/core/data/error/failure.dart';
import 'package:mama_bill/core/domain/usecase/usecase.dart';
import 'package:mama_bill/features/authentication/domain/repositories/auth_repository.dart';

class LogoutUseCase extends UseCase<Unit, NoParams> {
  LogoutUseCase(this.repository);
  final AuthRepository repository;

  @override
  Future<Either<Failure, Unit>> call(NoParams params) async {
    return await repository.signOut();
  }
}
