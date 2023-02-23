import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../l10n/generated/proxo_localizations.dart';
import '../../routes.dart';
import '../views/landscape_aware_view.dart';
import '../views/proxo_app_info_view.dart';
import '../views/proxo_list_view.dart';
import '../views/proxo_logo_view.dart';
import '../views/proxo_safe_area.dart';
import '../views/proxo_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LandscapeAwarePage(
      portraitFlexFactors: const [1, 1],
      drawSplitBorder: true,
      views: [
        const ProxoSafeArea(
          bottom: false,
          left: false,
          right: false,
          child: ProxoLogoView(
            margin: EdgeInsets.symmetric(horizontal: 36),
          ),
        ),
        ProxoListView(
          items: _buildHomeItemsList(context),
        ),
      ],
      lanscapeViews: [
        const ProxoLogoView(
          margin: EdgeInsets.symmetric(horizontal: 36),
        ),
        ProxoListView(
          showTopBottomDividers: false,
          items: [
            const ProxoSafeArea(
              left: false,
              right: false,
              bottom: false,
            ),
            ..._buildHomeItemsList(context),
          ],
        ),
      ],
    );
  }

  List<Widget> _buildHomeItemsList(BuildContext context) {
    final localizations = ProxoLocalizations.of(context)!;
    return [
      ProxoTile(
        iconData: Icons.play_arrow_sharp,
        iconColor: Colors.green,
        title: localizations.play,
        pageRoute: ProxoRoutes.opponentSelection,
      ),
      ProxoTile(
        iconData: Icons.scoreboard_outlined,
        iconColor: Colors.yellow.shade800,
        title: localizations.scoreBoard,
        pageRoute: ProxoRoutes.inDevelopment,
      ),
      const SizedBox(height: 12),
      ProxoTile(
        iconData: Icons.settings,
        title: localizations.settings,
        pageRoute: ProxoRoutes.settings,
      ),
      ProxoTile(
        iconData: Icons.info_outline,
        iconColor: Colors.blueAccent,
        title: localizations.about,
        pageRoute: ProxoRoutes.about,
        trailing: const ProxoAppInfoView(),
      ),
      if (!kIsWeb && !Platform.isIOS) ...[
        const SizedBox(height: 12),
        ProxoTile(
          iconData: Icons.exit_to_app_sharp,
          iconColor: Colors.red,
          title: ProxoLocalizations.of(context)!.exit,
          onTap: SystemNavigator.pop,
        ),
      ],
      const SizedBox.shrink(),
    ];
  }
}
