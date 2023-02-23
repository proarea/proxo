import 'package:flutter/material.dart';

import '../resources/proxo_assets.dart';
import 'themed_logo.dart';

class ProAreaLogoView extends StatelessWidget {
  final EdgeInsets margin;

  const ProAreaLogoView({
    Key? key,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ThemedLogo(
        margin: margin,
        ukLogoPath: ProxoAssets.proareaLogoUkraine,
        lightLogoPath: ProxoAssets.proareaLogoLight,
        darkLogoPath: ProxoAssets.proareaLogoDark,
      ),
    );
  }
}
