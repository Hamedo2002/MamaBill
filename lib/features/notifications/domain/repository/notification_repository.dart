import 'package:dartz/dartz.dart';
import 'package:mama_bill/core/data/error/failure.dart';
import 'package:mama_bill/features/medicine/domain/entities/schedule.dart';
import 'package:mama_bill/features/notifications/domain/entities/notification.dart';

abstract class NotificationRepository {
  Future<Either<Failure, Unit>> scheduleWeeklyNotification(
      NotificationData notificationData);
  Future<Either<Failure, Unit>> cancelNotification(int id, Schedule schedule);
}
