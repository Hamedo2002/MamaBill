import 'package:dartz/dartz.dart';
import 'package:mama_bill/core/data/error/failure.dart';
import 'package:mama_bill/core/domain/usecase/usecase.dart';
import 'package:mama_bill/features/medicine/domain/entities/medicine_schedule.dart';
import 'package:mama_bill/features/medicine/domain/repositories/medicine_repository.dart';

class AddPatientDataUseCase extends UseCase<Unit, MedicineSchedule> {
  final MedicineRepository repository;

  AddPatientDataUseCase(this.repository);

  @override
  Future<Either<Failure, Unit>> call(MedicineSchedule params) async {
    return await repository.addMedicineSchedule(params);
  }
}
