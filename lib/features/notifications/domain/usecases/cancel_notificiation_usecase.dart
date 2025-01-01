import 'package:dartz/dartz.dart';
import 'package:mama_bill/core/data/error/failure.dart';
import 'package:mama_bill/features/medicine/domain/entities/schedule.dart';
import 'package:mama_bill/features/notifications/domain/repository/notification_repository.dart';

class CancelNotificationUseCase {
  final NotificationRepository notificationRepository;

  CancelNotificationUseCase(this.notificationRepository);

  Future<Either<Failure, Unit>> call(int id, Schedule params) async {
    return await notificationRepository.cancelNotification(id, params);
  }
}
