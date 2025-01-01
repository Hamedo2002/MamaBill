import 'package:dartz/dartz.dart';
import 'package:mama_bill/core/data/error/failure.dart';
import 'package:mama_bill/features/medicine/domain/entities/schedule.dart';
import 'package:mama_bill/features/notifications/data/datasource/local/notification_datasource.dart';
import 'package:mama_bill/features/notifications/domain/entities/notification.dart';
import 'package:mama_bill/features/notifications/domain/repository/notification_repository.dart';

class NotificationRepositoryImpl extends NotificationRepository {
  NotificationRepositoryImpl(this.localNotificationDataSource);
  final LocalNotificationDataSource localNotificationDataSource;

  @override
  Future<Either<Failure, Unit>> scheduleWeeklyNotification(
      NotificationData notificationData) async {
    try {
      await localNotificationDataSource
          .scheduleWeeklyNotification(notificationData);
      return right(unit);
    } catch (e) {
      return left(NotificationFailure());
    }
  }

  @override
  Future<Either<Failure, Unit>> cancelNotification(
      int id, Schedule schedule) async {
    try {
      await localNotificationDataSource.cancelNotification(id, schedule);
      return right(unit);
    } catch (e) {
      return left(NotificationFailure());
    }
  }
}
