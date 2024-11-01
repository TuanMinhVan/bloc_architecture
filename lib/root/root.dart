import 'package:flutter/services.dart';

import '../blocs/authentication/authentication_bloc.dart';
import '../blocs/common/common_bloc.dart';
import '../blocs/preferences/preferences_bloc.dart';
import '../core/config.dart';
import '../core/routes/app_routes.dart';
import '../core/services/injection_container.dart';
import '../core/services/lifecycle_app.dart';
import '../presentation/widgets/indicators/loading_indicator.dart';

class RootApp extends HookWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(
      () {
        /// set the system ui mode to edge to edge
        SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

        /// set the preferred orientations to portrait up
        SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
        getIt<PreferencesBloc>().add(const PreferencesEvent.initial());
        getIt<AuthenticationBloc>().add(const AuthenticationEvent.check());
        lifecycleApp();
        return;
      },
      [],
    );
    return BlocBuilder<PreferencesBloc, PreferencesState>(
      builder: (context, state) {
        final themeMode = state.themeMode;
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            systemNavigationBarColor: Colors.transparent,
            statusBarIconBrightness: themeMode == ThemeMode.system
                ? MediaQuery.platformBrightnessOf(context) == Brightness.dark
                    ? Brightness.light
                    : Brightness.dark
                : themeMode == ThemeMode.dark
                    ? Brightness.light
                    : Brightness.dark,
          ),
          child: MaterialApp.router(
            key: globalKey,
            debugShowCheckedModeBanner: false,
            title: Configs.appName,
            themeMode: themeMode,
            theme: theme(context),
            locale: context.locale,
            supportedLocales: context.supportedLocales,
            localizationsDelegates: context.localizationDelegates,
            routerConfig: appRouter.config(
              navigatorObservers: () => [MyObserver()],
            ),
            builder: (context, child) {
              return Stack(
                children: [
                  child!,
                  const LoadingScreen(),
                ],
              );
            },
          ),
        );
      },
    );
  }
}

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<CommonBloc, CommonState, bool>(
      selector: (state) => state.isLoading,
      builder: (context, isLoading) => Visibility(
        visible: isLoading,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.5),
          ),
          child: const LoadingIndicator(),
        ),
      ),
    );
  }
}
