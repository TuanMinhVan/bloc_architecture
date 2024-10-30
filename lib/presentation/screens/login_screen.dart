import 'package:flutter/foundation.dart';

import '../../blocs/authentication/authentication_bloc.dart';
import '../../core/config.dart';
import '../../core/routes/app_routes.gr.dart';
import '../widgets/button_custom.dart';
import '../widgets/text_field_custom.dart';

/// The login screen.
///
/// This screen allows the user to login to the app.
///
/// The user can enter their username and password, and then click the login button.
///
/// If the login is successful, the user will be redirected to the dashboard.
///
/// If the login is unsuccessful, the user will be shown an error message.
@RoutePage(name: 'LoginRoute')
class LoginScreen extends HookWidget {
  /// Creates a new instance of the [LoginScreen] widget.
  ///
  /// The [onResult] callback is called when the user logs in or out.
  const LoginScreen({super.key, this.onResult});

  /// The callback that is called when the user logs in or out.
  final Function(bool didLogin)? onResult;

  @override
  Widget build(BuildContext context) {
    /// The form key.
    final formKey = useMemoized(() => GlobalKey<FormState>());

    /// The username text editing controller.
    final username = useTextEditingController();

    /// The password text editing controller.
    final password = useTextEditingController();

    /// The state that indicates whether the fields are empty.
    final checkFieldsEmpty = useState(true);

    /// Returns whether the fields are empty.
    bool areFieldsEmpty() {
      return username.text.isEmpty || password.text.isEmpty;
    }

    /// The listener that updates the state when the fields are changed.
    void listener() => checkFieldsEmpty.value = areFieldsEmpty();

    /// The effect that initializes the controllers and listeners.
    useEffect(
      () {
        /// If the app is in debug mode, set the username and password to default values.
        if (kDebugMode) {
          username.text = 'emilys';
          password.text = 'emilyspass';
        }

        /// Update the state and add listeners to the controllers.
        checkFieldsEmpty.value = areFieldsEmpty();
        username.addListener(listener);
        password.addListener(listener);

        /// Remove the listeners when the widget is disposed.
        return () {
          username.removeListener(listener);
          password.removeListener(listener);
        };
      },
      [username, password],
    );

    /// The BlocConsumer that listens to the authentication bloc.
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      /// The listener that handles the authentication state.
      listener: (context, state) {
        /// If the login is successful, navigate to the dashboard.
        if (state.isAuthenticated) {
          AutoRouter.of(context).pushAndPopUntil(
            const DashboardRoute(),
            predicate: (route) => false,
          );
        }
      },

      /// The builder that builds the widget based on the authentication state.
      builder: (context, state) {
        return Scaffold(
          /// Prevent the scaffold from resizing to avoid the bottom inset.
          resizeToAvoidBottomInset: false,
          body: Container(
            /// Set the background gradient.
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 164, 194, 236),
                  Color(0xFFE0E0E0),
                ],
              ),
            ),

            /// Center the content of the screen.
            child: Center(
              child: Padding(
                /// Add padding to the content.
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  /// Set the form key.
                  key: formKey,
                  child: Column(
                    /// Set the main axis size to minimum.
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      /// Display the Flutter logo.
                      const Center(child: FlutterLogo(size: 100)),
                      HeightBox(20.h),

                      /// Display the login title.
                      TextApp.bold(
                        LocaleKeys.loginTitle.tr(),
                        type: TextType.xxlg,
                      ),
                      HeightBox(8.h),

                      /// Display the login description.
                      TextApp(
                        LocaleKeys.loginDescription.tr(),
                        textAlign: TextAlign.center,
                      ),
                      HeightBox(20.h),

                      /// Display the username text field.
                      TextFieldCustom(
                        controller: username,
                        hintText: LocaleKeys.loginUsername.tr(),
                        keyboardType: TextInputType.emailAddress,
                        prefixIcon: Assets.iconsMail.svg(),
                      ),
                      SizedBox(height: 16.h),

                      /// Display the password text field.
                      TextFieldCustom(
                        controller: password,
                        hintText: LocaleKeys.loginPassword.tr(),
                        obscureText: true,
                        prefixIcon: Assets.iconsLock.svg(),
                        errorText: state is AuthenticationLoginFailure
                            ? state.message
                            : null,
                      ),
                      SizedBox(height: 24.h),

                      /// Display the login button.
                      GradientButton(
                        text: LocaleKeys.loginButton.tr(),
                        onPressed: checkFieldsEmpty.value
                            ? null
                            : () {
                                /// Validate the form.
                                if (formKey.currentState!.validate()) {
                                  /// Dispatch the login event to the authentication bloc.
                                  context.read<AuthenticationBloc>().add(
                                        AuthenticationLoginEvent(
                                          username.text,
                                          password.text,
                                        ),
                                      );
                                }
                              },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
