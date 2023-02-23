import 'dart:developer';

import 'package:flutter/widgets.dart';

import '../../data/models/proxo_settings.dart';
import '../../data/storage/settings_storage.dart';
import '../../themes/theme.dart';
import '../base_cubit.dart';
import 'proxo_control.dart';

class ProxoControlCubit extends BaseCubit<ProxoControlState> {
  final SettingsStorage settingsStorage;

  ProxoSettings get settings => state.settings;

  ProxoControlCubit({
    required this.settingsStorage,
  }) : super(ProxoControlState(settingsStorage.readSettings()));

  @override
  void handleError(String errorMessage) {
    log(
      errorMessage,
      name: '$runtimeType',
      level: 1000,
    );
  }

  Future<void> changeLanguage(Locale locale) async {
    await performSafeAction(() async {
      final currentSettings = settingsStorage.readSettings();
      final updatedSettings = currentSettings.copyWith(
        languageCode: locale.languageCode,
      );
      await settingsStorage.writeSettings(updatedSettings);
      emit(state.copyWith(
        settings: updatedSettings,
      ));
    });
  }

  Future<void> changeTheme(ProxoTheme theme) async {
    await performSafeAction(() async {
      final currentSettings = settingsStorage.readSettings();
      final updatedSettings = currentSettings.copyWith(themeCode: theme.name);
      await settingsStorage.writeSettings(updatedSettings);
      emit(state.copyWith(
        settings: updatedSettings,
      ));
    });
  }

  Future<void> toggleBoardIndexes(bool enabled) async {
    await performSafeAction(() async {
      final currentSettings = settingsStorage.readSettings();
      final updatedSettings = currentSettings.copyWith(
        boardIndexesEnables: enabled,
      );
      final updatedState = state.copyWith(settings: updatedSettings);
      await settingsStorage.writeSettings(updatedSettings);
      emit(updatedState);
    });
  }
}
