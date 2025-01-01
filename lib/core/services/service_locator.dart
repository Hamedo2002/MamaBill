import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

import 'package:mama_bill/core/data/remote/network_connection.dart';
import 'package:mama_bill/core/resources/router.dart';
import 'package:mama_bill/core/services/local_notification_services.dart';
import 'package:mama_bill/core/utils/route_utils.dart';
import 'package:mama_bill/features/authentication/core/auth_dependencies.dart';
import 'package:mama_bill/features/calendar/core/calendar_dependencies.dart';
import 'package:mama_bill/features/medicine/core/medicine_dependencies.dart';
import 'package:mama_bill/features/notifications/core/notification_dependencies.dart';

GetIt sl = GetIt.instance;

class ServiceLocator {
  static init() {
    // Core
    sl.registerFactory(() => FirebaseAuth.instance);
    sl.registerFactory(() => NetworkConnection());
    sl.registerLazySingleton(() => AppRouter(sl()));
    sl.registerLazySingleton(() => GoRouterRefreshStream(sl()));
    sl.registerLazySingleton(() => LocalNotificationServices());

    AuthDependencies.registerDependencies();
    CalendarDependencies.registerDependencies();
    MedicineDependencies.registerDependencies();
    NotificationDependencies.registerDependencies();
  }
}
