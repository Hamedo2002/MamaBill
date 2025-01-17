import 'package:dartz/dartz.dart';
import 'package:mama_bill/core/data/error/failure.dart';
import 'package:mama_bill/core/domain/usecase/usecase.dart';
import 'package:mama_bill/features/notifications/domain/entities/notification.dart';
import 'package:mama_bill/features/notifications/domain/repository/notification_repository.dart';

class ScheduleWeeklyNotificationUseCase
    extends UseCase<Unit, NotificationData> {
  ScheduleWeeklyNotificationUseCase(this._notificationRepository);

  final NotificationRepository _notificationRepository;
  
  @override
  Future<Either<Failure, Unit>> call(NotificationData params) async {
    return await _notificationRepository.scheduleWeeklyNotification(params);
  }
}
