import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../l10n/generated/proxo_localizations.dart';
import '../resources/proxo_assets.dart';
import '../views/back_tile.dart';
import '../views/landscape_aware_view.dart';

class InDevelopmentPage extends StatelessWidget {
  const InDevelopmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LandscapeAwarePage(
      portraitFlexFactors: const [3, 2],
      landscapeFlexFactors: const [1, 2],
      drawSplitBorder: true,
      views: [
        _buildDeveloperView(),
        Column(
          children: _buildInfoElements(context),
        ),
      ],
      lanscapeViews: [
        _buildDeveloperView(landscape: true),
        Column(
          children: _buildInfoElements(context),
        ),
      ],
    );
  }

  Widget _buildDeveloperView({bool landscape = false}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: landscape ? Alignment.center : Alignment.bottomCenter,
        child: LottieBuilder.asset(
          ProxoAssets.development,
        ),
      ),
    );
  }

  List<Widget> _buildInfoElements(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return [
      const Spacer(),
      Padding(
        padding: const EdgeInsets.all(24),
        child: Text(
          ProxoLocalizations.of(context)!.inDevMessage,
          style: textTheme.headline5,
        ),
      ),
      const Spacer(),
      _buildBackButton(),
      const SizedBox(height: 24),
    ];
  }

  Widget _buildBackButton() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: const [
        Divider(height: 0),
        BackTile(),
        Divider(height: 0),
      ],
    );
  }
}
