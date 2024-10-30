import '../../blocs/authentication/authentication_bloc.dart';
import '../config.dart';
import '../services/injection_container.dart';
import 'app_routes.gr.dart';

final globalKey = GlobalKey<NavigatorState>();

final appRouter = AppRouter();

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  AppRouter({super.navigatorKey});

  String? previousRoute;

  @override
  final List<AutoRoute> routes = [
    CustomRoute(
      page: LoginRoute.page,
      path: '/login',
      transitionsBuilder: customAnimation,
    ),
    CustomRoute(
      initial: true,
      page: DashboardRoute.page,
      transitionsBuilder: TransitionsBuilders.noTransition,
    ),
  ];
  @override
  late final List<AutoRouteGuard> guards = [const AuthGuard()];
}

@RoutePage(name: 'HomeNavRoute')
class HomeNav extends AutoRouter {
  const HomeNav({super.key});
}

@RoutePage(name: 'SettingNavRoute')
class SettingNav extends AutoRouter {
  const SettingNav({super.key});
}

class AuthGuard extends AutoRouteGuard {
  const AuthGuard();
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final authenticationBloc = getIt<AuthenticationBloc>();

    final isLoginIn = await authenticationBloc.checkAuthentication.call();

    Logger.log(isLoginIn, tag: 'AuthGuard');

    /// List of routes that do not require authentication
    final acceptRoutes = [
      LoginRoute.name,
    ];

    /// check if route is login
    if (isLoginIn || acceptRoutes.contains(resolver.route.name)) {
      resolver.next(true);
    } else {
      resolver.redirect(LoginRoute(onResult: resolver.next));
    }
  }
}

Widget customAnimation(
  BuildContext context,
  Animation<double> animation,
  Animation<double> secondaryAnimation,
  Widget child,
) {
  return FadeTransition(
    opacity: animation.drive(CurveTween(curve: Curves.easeInOutQuart)),
    child: ScaleTransition(
      scale: Tween<double>(begin: 1.1, end: 1).animate(animation),
      child: child,
    ),
  );
}
