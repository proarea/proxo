import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../helpers/hero_heloper.dart';
import '../resources/proxo_constants.dart';

enum VersionType {
  fullVersion,
  shortVersion,
  buildNumber,
  packageName,
  appName,
}

class ProxoAppInfoView extends StatelessWidget {
  static PackageInfo? _cachedPackageInfo;

  final double size;
  final bool useHero;
  final VersionType type;

  const ProxoAppInfoView({
    Key? key,
    this.size = 16,
    this.useHero = true,
    this.type = VersionType.fullVersion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cachedPackageInfo = _cachedPackageInfo;

    if (cachedPackageInfo != null) {
      return _buildVersionText(cachedPackageInfo);
    }

    return FutureBuilder<PackageInfo>(
      future: PackageInfo.fromPlatform(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return LoadingFadingLine.circle(size: size);

        final info = snapshot.data!;
        _cachedPackageInfo = info;

        return _buildVersionText(info);
      },
    );
  }

  Widget _buildVersionText(PackageInfo info) {
    final varsionFormatMap = {
      VersionType.fullVersion: 'v${info.version}+${info.buildNumber}',
      VersionType.shortVersion: 'v${info.version}',
      VersionType.buildNumber: info.buildNumber,
      VersionType.packageName: info.packageName,
      VersionType.appName: info.appName,
    };
    final formattedString = varsionFormatMap[type] ?? '';

    return _buildHeroAware(
      child: AutoSizeText(
        formattedString,
        minFontSize: size,
        maxLines: 1,
      ),
    );
  }

  Widget _buildHeroAware({required Widget child}) {
    if (!useHero) return child;

    return Hero(
      flightShuttleBuilder: flightShuttleBuilder,
      tag: ProxoConstants.versionTag,
      child: child,
    );
  }
}
