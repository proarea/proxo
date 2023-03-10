import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'l10n/generated/proxo_localizations.dart';
import 'routes.dart';
import 'src/bloc/proxo_control/proxo_control.dart';
import 'src/helpers/no_glow_scroll_behaviour.dart';
import 'src/themes/theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProxoControlCubit, ProxoControlState>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: state.settings.theme.themeData,
          scrollBehavior: NoGlowScrollBehaviour(),
          localizationsDelegates: ProxoLocalizations.localizationsDelegates,
          supportedLocales: ProxoLocalizations.supportedLocales,
          locale: Locale(state.settings.languageCode),
          initialRoute: ProxoRoutes.splash,
          onGenerateRoute: onGenerateRoute,
        );
      },
    );
  }
}
