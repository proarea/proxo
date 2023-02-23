import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../l10n/generated/proxo_localizations.dart';
import '../../routes.dart';
import '../resources/proxo_assets.dart';
import '../views/back_tile.dart';
import '../views/landscape_aware_view.dart';
import '../views/proxo_list_view.dart';
import '../views/proxo_tile.dart';

class OpponentSelectionPage extends StatelessWidget {
  static final _titleGroup = AutoSizeGroup();
  static final _subtitleGroup = AutoSizeGroup();

  const OpponentSelectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final opponentTiles = _buildOpponentTiles(context);
    return LandscapeAwarePage(
      useViewPadding: true,
      portraitFlexFactors: const [1, null],
      drawSplitBorder: true,
      views: [
        Center(
          child: Lottie.asset(ProxoAssets.fight),
        ),
        ProxoListView(
          padding: const EdgeInsets.symmetric(vertical: 16),
          items: opponentTiles,
        ),
      ],
    );
  }

  List<Widget> _buildOpponentTiles(BuildContext context) {
    final localizations = ProxoLocalizations.of(context)!;

    return [
      ProxoTile(
        iconData: Icons.people_alt_outlined,
        iconColor: Colors.blueGrey,
        title: localizations.humanHumanTitle,
        subtitle: localizations.humanHumanDescription,
        pageRoute: ProxoRoutes.gameHumans,
        overrideTitleGroup: _titleGroup,
        overrideSubtitleGroup: _subtitleGroup,
      ),
      const SizedBox(height: 12),
      ProxoTile(
        iconData: Icons.computer_sharp,
        iconColor: Colors.green,
        title: localizations.humanEasyBotTitle,
        subtitle: localizations.humanEasyBotDescription,
        pageRoute: ProxoRoutes.gameEasyBot,
        overrideTitleGroup: _titleGroup,
        overrideSubtitleGroup: _subtitleGroup,
      ),
      ProxoTile(
        iconData: Icons.computer_sharp,
        iconColor: Colors.red,
        title: localizations.humanHardBotTitle,
        subtitle: localizations.humanHardBotDescription,
        pageRoute: ProxoRoutes.gameHardBot,
        overrideTitleGroup: _titleGroup,
        overrideSubtitleGroup: _subtitleGroup,
      ),
      const SizedBox(height: 12),
      ProxoTile(
        iconData: Icons.auto_stories_rounded,
        iconColor: Colors.green,
        title: localizations.easyBotsTitle,
        subtitle: localizations.easyBotsDescription,
        pageRoute: ProxoRoutes.gameEasyBots,
        overrideTitleGroup: _titleGroup,
        overrideSubtitleGroup: _subtitleGroup,
      ),
      ProxoTile(
        iconData: Icons.auto_stories_rounded,
        iconColor: Colors.red,
        title: localizations.hardBotsTitle,
        subtitle: localizations.hardBotsDescription,
        pageRoute: ProxoRoutes.gameHardBots,
        overrideTitleGroup: _titleGroup,
        overrideSubtitleGroup: _subtitleGroup,
      ),
      const SizedBox(height: 12),
      BackTile(group: _titleGroup),
    ];
  }
}
