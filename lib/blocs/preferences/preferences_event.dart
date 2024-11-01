part of 'preferences_bloc.dart';

@freezed
class PreferencesEvent extends BaseEvent with _$PreferencesEvent {
  const factory PreferencesEvent.initial() = _Initial;
  const factory PreferencesEvent.changeLocale(Locale locale) = _ChangeLocale;
}
