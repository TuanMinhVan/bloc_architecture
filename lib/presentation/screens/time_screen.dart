import '../../core/config.dart';

@RoutePage(name: 'TimeRoute')
class TimeScreen extends StatelessWidget {
  const TimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(context.tr(LocaleKeys.navigatorTime)),
    );
  }
}
