import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mama_bill/core/resources/routes.dart';
import 'package:mama_bill/core/utils/enums.dart';
import 'package:mama_bill/features/authentication/presentation/controller/auth/bloc/auth_bloc.dart';

class RouteUtils {
  static String? handleRedirect(
      AuthBloc authBloc,
      BuildContext context,
      GoRouterState state,
      ) {
    final isLoggedIn = authBloc.state.status == AppStatus.authenticated;
    final isOnWelcomePage = state.matchedLocation == AppRoutes.welcome.path;
    final isOnLoginPage = state.matchedLocation.contains(AppRoutes.login.path);
    final isOnRegisterPage =
    state.matchedLocation.contains(AppRoutes.register.path);

    if (isLoggedIn) {
      if (isOnWelcomePage || isOnLoginPage || isOnRegisterPage) {
        return AppRoutes.home.path;
      }
    } else {
      if (!isOnWelcomePage && !isOnLoginPage && !isOnRegisterPage) {
        return AppRoutes.welcome.path;
      }
    }

    return null;
  }
}

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(AuthBloc authBloc) {
    notifyListeners();
    _subscription = authBloc.stream.asBroadcastStream().listen(
          (dynamic _) => notifyListeners(),
    );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
