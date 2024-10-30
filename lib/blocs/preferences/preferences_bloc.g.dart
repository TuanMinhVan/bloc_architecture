// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preferences_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PreferencesLoadedImpl _$$PreferencesLoadedImplFromJson(
        Map<String, dynamic> json) =>
    _$PreferencesLoadedImpl(
      darkMode: json['darkMode'] as bool,
      locale: PreferencesState._localeReadValue(json, 'locale') == null
          ? PreferencesState._defaultLocaleValue()
          : PreferencesState._localeFromJson(
              PreferencesState._localeReadValue(json, 'locale')
                  as Map<String, dynamic>),
      themeMode: json['themeMode'] == null
          ? ThemeMode.light
          : PreferencesState._themeModeFromJson(json['themeMode'] as String),
    );

Map<String, dynamic> _$$PreferencesLoadedImplToJson(
        _$PreferencesLoadedImpl instance) =>
    <String, dynamic>{
      'darkMode': instance.darkMode,
      'locale': PreferencesState._localeToJson(instance.locale),
      'themeMode': PreferencesState._themeModeToJson(instance.themeMode),
    };
