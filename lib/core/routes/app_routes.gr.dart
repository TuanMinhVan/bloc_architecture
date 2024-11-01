// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:bloc_architecture/core/config.dart' as _i10;
import 'package:bloc_architecture/core/routes/app_routes.dart' as _i1;
import 'package:bloc_architecture/presentation/screens/calendar_screen.dart'
    as _i2;
import 'package:bloc_architecture/presentation/screens/chart_screen.dart'
    as _i3;
import 'package:bloc_architecture/presentation/screens/dashboard_screen.dart'
    as _i4;
import 'package:bloc_architecture/presentation/screens/home_screen.dart' as _i5;
import 'package:bloc_architecture/presentation/screens/login_screen.dart'
    as _i6;
import 'package:bloc_architecture/presentation/screens/setting_screen.dart'
    as _i7;
import 'package:bloc_architecture/presentation/screens/time_screen.dart' as _i8;

/// generated route for
/// [_i1.CalendarNav]
class CalendarNavRoute extends _i9.PageRouteInfo<void> {
  const CalendarNavRoute({List<_i9.PageRouteInfo>? children})
      : super(
          CalendarNavRoute.name,
          initialChildren: children,
        );

  static const String name = 'CalendarNavRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i1.CalendarNav();
    },
  );
}

/// generated route for
/// [_i2.CalendarScreen]
class CalendarRoute extends _i9.PageRouteInfo<void> {
  const CalendarRoute({List<_i9.PageRouteInfo>? children})
      : super(
          CalendarRoute.name,
          initialChildren: children,
        );

  static const String name = 'CalendarRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i2.CalendarScreen();
    },
  );
}

/// generated route for
/// [_i1.ChartNav]
class ChartNavRoute extends _i9.PageRouteInfo<void> {
  const ChartNavRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ChartNavRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChartNavRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i1.ChartNav();
    },
  );
}

/// generated route for
/// [_i3.ChartScreen]
class ChartRoute extends _i9.PageRouteInfo<void> {
  const ChartRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ChartRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChartRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i3.ChartScreen();
    },
  );
}

/// generated route for
/// [_i4.DashboardScreen]
class DashboardRoute extends _i9.PageRouteInfo<void> {
  const DashboardRoute({List<_i9.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i4.DashboardScreen();
    },
  );
}

/// generated route for
/// [_i1.HomeNav]
class HomeNavRoute extends _i9.PageRouteInfo<void> {
  const HomeNavRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeNavRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeNavRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeNav();
    },
  );
}

/// generated route for
/// [_i5.HomeScreen]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i5.HomeScreen();
    },
  );
}

/// generated route for
/// [_i6.LoginScreen]
class LoginRoute extends _i9.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i10.Key? key,
    dynamic Function(bool)? onResult,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(
            key: key,
            onResult: onResult,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<LoginRouteArgs>(orElse: () => const LoginRouteArgs());
      return _i6.LoginScreen(
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

  final _i10.Key? key;

  final dynamic Function(bool)? onResult;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onResult: $onResult}';
  }
}

/// generated route for
/// [_i1.SettingNav]
class SettingNavRoute extends _i9.PageRouteInfo<void> {
  const SettingNavRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SettingNavRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingNavRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i1.SettingNav();
    },
  );
}

/// generated route for
/// [_i7.SettingScreen]
class SettingRoute extends _i9.PageRouteInfo<void> {
  const SettingRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return _i7.SettingScreen();
    },
  );
}

/// generated route for
/// [_i8.TimeScreen]
class TimeRoute extends _i9.PageRouteInfo<void> {
  const TimeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          TimeRoute.name,
          initialChildren: children,
        );

  static const String name = 'TimeRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i8.TimeScreen();
    },
  );
}
