import '../../../../core/config.dart';
import 'button_custom.dart';

class LanguagePicker extends HookWidget {
  const LanguagePicker({super.key});

  static void pick(BuildContext context) {
    Navigator.of(context, rootNavigator: true).push(
      MaterialPageRoute(
        builder: (context) => const LanguagePicker(),
        settings: const RouteSettings(name: 'LanguageRoute'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final defaultLanguage = useState(context.locale);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(LocaleKeys.languageScreenTitle.tr()),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: context.supportedLocales.length,
                itemBuilder: (BuildContext context, int index) {
                  final language = context.supportedLocales.elementAt(index);
                  final isoCodeName = LanguageLocals.getDisplayLanguage(
                    language.languageCode,
                  );
                  return ListTile(
                    title: Text(
                      isoCodeName.name.tr(),
                      style: context.bodyLarge,
                    ),
                    trailing: language == defaultLanguage.value
                        ? Icon(
                            Icons.check,
                            color: context.primaryColor,
                          )
                        : null,
                    onTap: () {
                      defaultLanguage.value = language;
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: GradientButton(
                text: LocaleKeys.languageScreenButton.tr(),
                height: 44.h,
                onPressed: () {
                  final locale = defaultLanguage.value;
                  context.setLocale(locale);
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
