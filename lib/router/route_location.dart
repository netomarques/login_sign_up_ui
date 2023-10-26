import 'package:flutter/material.dart';

@immutable
class RouteLocation {
  const RouteLocation._();

  static String get home => '/welcome';
  static String get login => '/login';
  static String get signUp => '/signup';
}
