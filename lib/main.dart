import 'blocs/authentication/authentication_bloc.dart';
import 'blocs/common/common_bloc.dart';
import 'blocs/preferences/preferences_bloc.dart';
import 'blocs/user_bloc/user_bloc.dart';
import 'core/app_localization/app_localization_app.dart';
import 'core/config.dart';
import 'core/services/injection_container.dart';
import 'root/root.dart';

/// The entry point of the application.
///
/// Initializes the application and runs the `RootApp` widget.
void main() async {
  Configs.init(() {
    init();
    runApp(
      ScreenUtilInit(
        designSize: Configs.designSize,
        minTextAdapt: Configs.minTextAdapter,
        splitScreenMode: Configs.splitScreenMode,
        child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => getIt<PreferencesBloc>()),
            BlocProvider(create: (_) => getIt<CommonBloc>()),
            BlocProvider(create: (_) => getIt<AuthenticationBloc>()),
            BlocProvider(create: (_) => UserBloc(getIt())),
          ],
          child: AppLocalizations(
            path: 'assets/translations',
            startLocale: LanguageLocals.defaultLocale,
            supportedLocales: LanguageLocals.supportedLocales,
            child: const RootApp(),
          ),
        ),
      ),
    );
  });
}
