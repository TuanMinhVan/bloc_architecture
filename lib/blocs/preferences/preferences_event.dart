part of 'preferences_bloc.dart';

abstract class PreferencesEvent extends BaseEvent {
  const PreferencesEvent();
}

class PreferencesEventInitial extends PreferencesEvent {
  const PreferencesEventInitial();
}

class PreferencesEventChangeLocale extends PreferencesEvent
    with EquatableMixin {
  const PreferencesEventChangeLocale(this.locale);
  final Locale locale;

  @override
  List<Object?> get props => [locale];
}
