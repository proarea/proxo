import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../l10n/generated/proxo_localizations.dart';
import '../../routes.dart';
import '../resources/proxo_assets.dart';
import '../views/landscape_aware_view.dart';
import '../views/proxo_app_info_view.dart';
import '../views/proxo_avatar.dart';
import '../views/proxo_list_view.dart';
import '../views/proxo_simple_app_bar.dart';
import '../views/proxo_tile.dart';
import '../views/themed_logo.dart';

class AboutPage extends StatelessWidget {
  static final _titleGroup = AutoSizeGroup();
  static final _subtitleGroup = AutoSizeGroup();

  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LandscapeAwarePage(
      useViewPadding: true,
      portraitFlexFactors: const [null, 2],
      landscapeFlexFactors: const [5, 8],
      drawSplitBorder: true,
      views: [
        ProxoSimpleAppBar(
          applyViewPaddings: true,
          title: ProxoLocalizations.of(context)!.about,
        ),
        _buildConfigListView(context),
      ],
      lanscapeViews: [
        ProxoSimpleAppBar(
          horizontalMargins: 0,
          title: ProxoLocalizations.of(context)!.about,
        ),
        _buildConfigListView(context),
      ],
    );
  }

  Widget _buildConfigListView(BuildContext context) {
    const imageSize = 50.0;

    final localizations = ProxoLocalizations.of(context)!;
    final theme = Theme.of(context);
    final leadDev = localizations.leadDeveloper;
    final boardMember = localizations.boardMember;
    final translator = localizations.translator;
    final accountManager = localizations.accountManager;

    return ProxoListView(
      padding: const EdgeInsets.symmetric(vertical: 16),
      items: [
        ProxoTile(
          title: localizations.appName,
          trailing: const ProxoAppInfoView(
            useHero: false,
            type: VersionType.appName,
          ),
          pageRoute: ProxoRoutes.inDevelopment,
          overrideTitleGroup: _titleGroup,
          overrideSubtitleGroup: _subtitleGroup,
        ),
        ProxoTile(
          title: localizations.appLaunchIcon,
          trailing: ProxoAvatar(
            size: 40,
            child: Image.asset(ProxoAssets.proxoIcon),
          ),
          overrideTitleGroup: _titleGroup,
          overrideSubtitleGroup: _subtitleGroup,
        ),
        const SizedBox(height: 16),
        ProxoTile(
          title: localizations.version,
          trailing: const ProxoAppInfoView(
            type: VersionType.shortVersion,
          ),
          overrideTitleGroup: _titleGroup,
          overrideSubtitleGroup: _subtitleGroup,
        ),
        ProxoTile(
          title: localizations.buildNumber,
          trailing: const ProxoAppInfoView(
            useHero: false,
            type: VersionType.buildNumber,
          ),
          overrideTitleGroup: _titleGroup,
          overrideSubtitleGroup: _subtitleGroup,
        ),
        ProxoTile(
          title: localizations.bundleId,
          trailing: const ProxoAppInfoView(
            useHero: false,
            type: VersionType.packageName,
          ),
          overrideTitleGroup: _titleGroup,
          overrideSubtitleGroup: _subtitleGroup,
        ),
        const SizedBox(height: 16),
        ProxoTile(
          trailing: ProxoAvatar(
            size: 40,
            lineSize: 1,
            child: const ThemedLogo(
              svg: false,
              ukLogoPath: ProxoAssets.proareaImageUk,
              lightLogoPath: ProxoAssets.proareaImageLight,
              darkLogoPath: ProxoAssets.proareaImageDark,
            ),
            color: theme.dividerColor,
          ),
          title: localizations.proarea,
          subtitle: localizations.company,
          pageRoute: ProxoRoutes.inDevelopment,
          overrideTitleGroup: _titleGroup,
          overrideSubtitleGroup: _subtitleGroup,
        ),
        const SizedBox(height: 16),
        ProxoTile(
          leading: ProxoAvatar(
            child: Image.asset(
              ProxoAssets.viacheslavPhoto,
              width: imageSize,
              height: imageSize,
              fit: BoxFit.cover,
            ),
          ),
          title: localizations.viacheslav,
          subtitle: '$leadDev | $boardMember',
          pageRoute: ProxoRoutes.inDevelopment,
          overrideTitleGroup: _titleGroup,
          overrideSubtitleGroup: _subtitleGroup,
        ),
        ProxoTile(
          leading: ProxoAvatar(
            child: Image.asset(
              ProxoAssets.bogdanPhoto,
              width: imageSize,
              height: imageSize,
              fit: BoxFit.cover,
            ),
          ),
          title: localizations.bogdan,
          subtitle: localizations.ceo,
          pageRoute: ProxoRoutes.inDevelopment,
          overrideTitleGroup: _titleGroup,
          overrideSubtitleGroup: _subtitleGroup,
        ),
        ProxoTile(
          leading: ProxoAvatar(
            child: Image.asset(
              ProxoAssets.polinaPhoto,
              width: imageSize,
              height: imageSize,
              fit: BoxFit.cover,
            ),
          ),
          title: localizations.polina,
          subtitle: '$translator | $accountManager',
          pageRoute: ProxoRoutes.inDevelopment,
          overrideTitleGroup: _titleGroup,
          overrideSubtitleGroup: _subtitleGroup,
        ),
      ],
    );
  }
}
