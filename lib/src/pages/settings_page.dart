import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../l10n/generated/proxo_localizations.dart';
import '../bloc/proxo_control/proxo_control.dart';
import '../helpers/language_helper.dart';
import '../themes/theme.dart';
import '../views/landscape_aware_view.dart';
import '../views/language_tile.dart';
import '../views/proxo_list_view.dart';
import '../views/proxo_simple_app_bar.dart';
import '../views/proxo_tile.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  void _onLanguageTap(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Theme.of(context).cardColor,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      builder: (context) {
        final languageTiles = ProxoLocalizations.supportedLocales
            .map((locale) => _buildLanguageTile(context, locale))
            .toList();
        return SafeArea(
          child: ProxoListView(
            padding: const EdgeInsets.symmetric(vertical: 24),
            showTopBottomDividers: false,
            items: languageTiles,
          ),
        );
      },
    );
  }

  void _onThemeTap(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Theme.of(context).cardColor,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      builder: (context) {
        final themeTiles = ProxoTheme.values
            .map((theme) => _buildThemeTile(context, theme))
            .toList();
        return SafeArea(
          child: ProxoListView(
            padding: const EdgeInsets.symmetric(vertical: 24),
            showTopBottomDividers: false,
            items: themeTiles,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final localizations = ProxoLocalizations.of(context)!;
    final settingItems = _buildSettingItems(context);

    return LandscapeAwarePage(
      useViewPadding: true,
      drawSplitBorder: true,
      landscapeFlexFactors: const [5, 8],
      views: [
        ProxoSimpleAppBar(
          applyViewPaddings: true,
          title: localizations.settings,
        ),
        ProxoListView(
          padding: const EdgeInsets.symmetric(vertical: 16),
          items: settingItems,
        ),
      ],
      lanscapeViews: [
        ProxoSimpleAppBar(
          horizontalMargins: 0.0,
          title: localizations.settings,
        ),
        ProxoListView(
          padding: const EdgeInsets.symmetric(vertical: 16),
          items: settingItems,
        ),
      ],
    );
  }

  Widget _buildLanguageTile(
    BuildContext context,
    Locale locale,
  ) {
    return LanguageTile(
      onTap: () {
        context.read<ProxoControlCubit>().changeLanguage(locale).then((value) {
          Navigator.of(context).pop();
        });
      },
      locale: locale,
    );
  }

  Widget _buildThemeTile(
    BuildContext context,
    ProxoTheme theme,
  ) {
    return ProxoTile(
      onTap: () {
        context.read<ProxoControlCubit>().changeTheme(theme).then((value) {
          Navigator.of(context).pop();
        });
      },
      title: theme.getLocalizedName(context),
    );
  }

  List<Widget> _buildSettingItems(BuildContext context) {
    final localizations = ProxoLocalizations.of(context)!;
    final localeMeta = LanguageHelper.getNativeLanguageName(
      localizations.localeName,
    );
    final cubit = context.read<ProxoControlCubit>();
    return [
      ProxoTile(
        trailing: Text(
          localeMeta!.emoji,
          style: const TextStyle(fontSize: 28),
        ),
        title: localizations.language,
        onTap: () => _onLanguageTap(context),
      ),
      ProxoTile(
        trailing: Text(
          cubit.state.settings.theme.getLocalizedName(context),
        ),
        title: localizations.theme,
        onTap: () => _onThemeTap(context),
      ),
      const SizedBox(height: 12),
      _buildIndexesSwitch(cubit, localizations),
    ];
  }

  Widget _buildIndexesSwitch(
    ProxoControlCubit cubit,
    ProxoLocalizations localizations,
  ) {
    final onChange = cubit.toggleBoardIndexes;
    return BlocBuilder<ProxoControlCubit, ProxoControlState>(
      builder: (context, state) {
        final cellIndexsesEnabled = state.settings.boardIndexesEnables;
        return MergeSemantics(
          child: ProxoTile(
            trailing: CupertinoSwitch(
              value: cellIndexsesEnabled,
              onChanged: (enabled) => onChange(enabled),
            ),
            title: localizations.cellNumberTitle,
            subtitle: localizations.cellNumberDescription,
            onTap: () => onChange(!cellIndexsesEnabled),
          ),
        );
      },
    );
  }
}
