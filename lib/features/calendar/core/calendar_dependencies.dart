import 'package:mama_bill/core/services/service_locator.dart';
import 'package:mama_bill/features/calendar/presentation/controller/cubit/calendar_cubit.dart';

class CalendarDependencies {
  static void registerDependencies() {
    sl.registerLazySingleton<CalendarCubit>(() => CalendarCubit());
  }
}
