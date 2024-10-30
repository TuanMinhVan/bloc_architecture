part of 'preferences_bloc.dart';

@freezed
class PreferencesState extends BaseState with _$PreferencesState {
  factory PreferencesState.fromJson(Map<String, dynamic> json) =>
      _$PreferencesStateFromJson(json);
  const factory PreferencesState({
    required bool darkMode,
    @JsonKey(
      defaultValue: PreferencesState._defaultLocaleValue,
      toJson: PreferencesState._localeToJson,
      fromJson: PreferencesState._localeFromJson,
      readValue: PreferencesState._localeReadValue,
    )
    required Locale locale,
    @JsonKey(
      defaultValue: ThemeMode.light,
      unknownEnumValue: ThemeMode.light,
      toJson: PreferencesState._themeModeToJson,
      fromJson: PreferencesState._themeModeFromJson,
    )
    required ThemeMode themeMode,
  }) = _PreferencesLoaded;

  factory PreferencesState.loaded() => const PreferencesState(
        darkMode: false,
        locale: Locale('en'),
        themeMode: ThemeMode.light,
      );

  static Locale _localeFromJson(Map<String, dynamic> json) {
    return Locale(json['languageCode'], json['countryCode']);
  }

  static Map<String, dynamic> _localeToJson(Locale locale) {
    return {
      'languageCode': locale.languageCode,
      'countryCode': locale.countryCode,
    };
  }

  static Map<String, dynamic>? _localeReadValue(
    Map<dynamic, dynamic> json,
    String key,
  ) {
    if (json[key] is String) {
      final map = jsonDecode(json[key]);
      return {
        'languageCode': map['lc'],
        'countryCode': map['cc'],
      };
    }

    return json[key] as Map<String, dynamic>?;
  }

  static Locale _defaultLocaleValue() {
    final systemLocale = PlatformDispatcher.instance.locale;
    if (LanguageLocals.supportedLocales
        .map((e) => e.languageCode)
        .contains(systemLocale.languageCode)) {
      return systemLocale;
    } else {
      return LanguageLocals.defaultLocale;
    }
  }

  static ThemeMode _themeModeFromJson(String value) {
    switch (value) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }

  static String _themeModeToJson(ThemeMode themeMode) {
    switch (themeMode) {
      case ThemeMode.system:
        return 'system';
      case ThemeMode.light:
        return 'light';
      case ThemeMode.dark:
        return 'dark';
    }
  }
}
