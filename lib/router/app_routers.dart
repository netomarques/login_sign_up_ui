import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_sign_up_ui/pages/pages.dart';
import 'package:login_sign_up_ui/router/router.dart';

final navigationKey = GlobalKey<NavigatorState>();

final appRoutes = [
  GoRoute(
    path: RouteLocation.home,
    parentNavigatorKey: navigationKey,
    builder: WelcomePage.builder,
  ),
  GoRoute(
    path: RouteLocation.login,
    parentNavigatorKey: navigationKey,
    builder: LoginPage.builder,
  ),
  GoRoute(
    path: RouteLocation.signUp,
    parentNavigatorKey: navigationKey,
    builder: SignUpPage.builder,
  )
];
