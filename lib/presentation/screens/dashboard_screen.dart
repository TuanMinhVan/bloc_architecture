import 'package:skeletonizer/skeletonizer.dart';

import '../../blocs/authentication/authentication_bloc.dart';
import '../../blocs/user_bloc/user_bloc.dart';
import '../../core/config.dart';
import '../../domain/entities/user.dart';
import '../widgets/language.dart';

/// The dashboard screen.
///
/// This screen displays a list of users.
@RoutePage(name: 'DashboardRoute')
class DashboardScreen extends HookWidget {
  /// Creates a new instance of [DashboardScreen].
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// Fetches the users when the screen is built.
    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          context.read<UserBloc>().add(const UserGetEvent());
        });
        return;
      },
      [],
    );

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.language),
          onPressed: () {
            LanguagePicker.pick(context);
          },
        ),
        title: Text(LocaleKeys.dashboardTitle.tr()),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              context
                  .read<AuthenticationBloc>()
                  .add(const AuthenticationLogoutEvent());
            },
          ),
        ],
      ),
      body: BlocBuilder<UserBloc, UserState>(
        /// Logs the current state of the authentication bloc.

        builder: (context, state) {
          /// Displays the list of users if the state is [UserLoaded].
          if (state is UserLoaded)
            return UserListView(users: state.data.users);

          /// Displays a progress indicator if the state is [GettingUsers].
          else if (state is UserLoading)
            return Skeletonizer(
              child: UserListView(
                users: List.generate(20, (index) => const User()),
              ),
            );

          /// Displays an error message if the state is [AuthenticationStateGetUsersFailed].
          else if (state is UserError)
            return Center(
              child: Text(state.message),
            );

          /// Displays an empty container if the state is none of the above.
          else
            return const SizedBox();
        },
      ),
    );
  }
}

/// A widget that displays a list of users.
class UserListView extends StatelessWidget {
  /// Creates a new instance of [UserListView].
  const UserListView({super.key, required this.users});

  /// The list of users to display.
  final List<User> users;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: user.image.isNotEmptyAndNotNull
                ? NetworkImage(user.image!)
                : null,
          ),
          title: Text(user.name, style: context.bodyLarge),
        );
      },
    );
  }
}
