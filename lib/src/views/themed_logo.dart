import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../bloc/proxo_control/proxo_control.dart';
import '../data/models/proxo_settings.dart';
import '../themes/theme.dart';

class ThemedLogo extends StatelessWidget {
  final String ukLogoPath;
  final String lightLogoPath;
  final String darkLogoPath;
  final String? heroTag;
  final EdgeInsets? margin;
  final bool svg;

  const ThemedLogo({
    Key? key,
    required this.ukLogoPath,
    required this.lightLogoPath,
    required this.darkLogoPath,
    this.svg = true,
    this.heroTag,
    this.margin,
  }) : super(key: key);

  String _getThemedLogoPath(ProxoSettings settings) {
    if (settings.languageCode == 'uk') return ukLogoPath;
    if (settings.theme == ProxoTheme.light) return lightLogoPath;
    return darkLogoPath;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProxoControlCubit, ProxoControlState>(
      builder: (context, state) {
        return _buildViewWithMargin(
          child: _buildViewWithHero(
            child: _buildImage(state),
          ),
        );
      },
    );
  }

  Widget _buildImage(ProxoControlState state) {
    if (svg) {
      return SvgPicture.asset(
        _getThemedLogoPath(state.settings),
      );
    }

    return Image.asset(
      _getThemedLogoPath(state.settings),
    );
  }

  Widget _buildViewWithMargin({required Widget child}) {
    final margin = this.margin;

    if (margin == null || margin == EdgeInsets.zero) return child;

    return Padding(
      padding: margin,
      child: child,
    );
  }

  Widget _buildViewWithHero({required Widget child}) {
    final heroTag = this.heroTag;

    if (heroTag == null) return child;

    return Hero(
      tag: heroTag,
      child: child,
    );
  }
}
