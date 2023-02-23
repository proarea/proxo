import 'package:flutter/material.dart';

import '../resources/proxo_assets.dart';
import '../resources/proxo_constants.dart';
import 'themed_logo.dart';

class ProxoLogoView extends StatelessWidget {
  final EdgeInsets margin;

  const ProxoLogoView({
    Key? key,
    this.margin = const EdgeInsets.symmetric(horizontal: 16),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ThemedLogo(
        heroTag: ProxoConstants.proxoTag,
        margin: margin,
        ukLogoPath: ProxoAssets.appLogoUkraine,
        lightLogoPath: ProxoAssets.appLogoLight,
        darkLogoPath: ProxoAssets.appLogoDark,
      ),
    );
  }
}
