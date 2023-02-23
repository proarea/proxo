import 'dart:io';
import 'dart:ui';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../../l10n/generated/proxo_localizations.dart';
import '../../resources/proxo_constants.dart';
import '../models/proxo_settings.dart';

@singleton
class SettingsStorage {
  @factoryMethod
  static Future<SettingsStorage> create() async {
    final box = await Hive.openBox<ProxoSettings>(
      ProxoConstants.proxoSettingsBox,
    );
    return SettingsStorage(box);
  }

  final Box<ProxoSettings> box;

  SettingsStorage(this.box);

  @disposeMethod
  void dispose() {
    box.close();
  }

  ProxoSettings readSettings() {
    final savedSettings = box.get(0);

    if (savedSettings != null) return savedSettings;

    final defaultLocale = Locale(Platform.localeName.split('_')[0]);
    final localeSupported = ProxoLocalizations.delegate.isSupported(
      defaultLocale,
    );

    if (!localeSupported) return const ProxoSettings();

    return ProxoSettings(languageCode: defaultLocale.languageCode);
  }

  Future<void> writeSettings(ProxoSettings settings) async {
    await box.clear();
    await box.add(settings);
  }
}
