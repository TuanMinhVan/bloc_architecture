// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:bloc_architecture/core/routes/app_routes.dart' as _i2;
import 'package:bloc_architecture/presentation/screens/dashboard_screen.dart'
    as _i1;
import 'package:bloc_architecture/presentation/screens/login_screen.dart'
    as _i3;
import 'package:flutter/foundation.dart' as _i5;

/// generated route for
/// [_i1.DashboardScreen]
class DashboardRoute extends _i4.PageRouteInfo<void> {
  const DashboardRoute({List<_i4.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.DashboardScreen();
    },
  );
}

/// generated route for
/// [_i2.HomeNav]
class HomeNavRoute extends _i4.PageRouteInfo<void> {
  const HomeNavRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeNavRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeNavRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomeNav();
    },
  );
}

/// generated route for
/// [_i3.LoginScreen]
class LoginRoute extends _i4.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i5.Key? key,
    dynamic Function(bool)? onResult,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(
            key: key,
            onResult: onResult,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<LoginRouteArgs>(orElse: () => const LoginRouteArgs());
      return _i3.LoginScreen(
        key: args.key,
        onResult: args.onResult,
      );
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({
    this.key,
    this.onResult,
  });

  final _i5.Key? key;

  final dynamic Function(bool)? onResult;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onResult: $onResult}';
  }
}

/// generated route for
/// [_i2.SettingNav]
class SettingNavRoute extends _i4.PageRouteInfo<void> {
  const SettingNavRoute({List<_i4.PageRouteInfo>? children})
      : super(
          SettingNavRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingNavRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.SettingNav();
    },
  );
}
