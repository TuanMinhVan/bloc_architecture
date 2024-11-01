import 'package:skeletonizer/skeletonizer.dart';

import '../../blocs/user_bloc/user_bloc.dart';
import '../../core/config.dart';
import '../../core/services/injection_container.dart';
import '../../domain/entities/user.dart';
import '../widgets/cache_image.dart';

@RoutePage(name: 'HomeRoute')
class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.tr(LocaleKeys.navigatorHome)),
      ),
      body: BlocProvider(
        create: (context) => UserBloc(getIt())..add(const UserEvent.getUser()),
        child: BlocBuilder<UserBloc, UserState>(
          /// Logs the current state of the authentication bloc.

          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const SizedBox(),
              loading: () {
                return Skeletonizer(
                  child: UserListView(
                    users: List.generate(20, (index) => const User()),
                  ),
                );
              },
              loaded: (data) {
                return UserListView(users: data.users);
              },
              error: (message) {
                return Center(
                  child: Text(message),
                );
              },
            );
          },
        ),
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
          leading: CacheImage(
            imageUrl: user.image ?? '',
            width: 40,
            height: 40,
            radius: 100,
          ),
          title: TextApp(
            user.name,
            type: TextType.lg,
            fontWeight: FontWeight.w500,
          ),
          subtitle: TextApp(
            user.email ?? '',
            fontStyle: FontStyle.italic,
          ),
        );
      },
    );
  }
}
