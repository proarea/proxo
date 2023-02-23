import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'app.dart';
import 'src/bloc/proxo_control/proxo_control_cubit.dart';
import 'src/data/models/proxo_settings.dart';
import 'src/data/storage/settings_storage.dart';
import 'src/di/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _initHive();

  configureDependencies();

  final settingsStorage = await locator.getAsync<SettingsStorage>();

  runApp(
    BlocProvider(
      create: (_) => ProxoControlCubit(
        settingsStorage: settingsStorage,
      ),
      child: const App(),
    ),
  );
}

Future<void> _initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ProxoSettingsAdapter());
}
