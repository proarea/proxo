import 'package:flutter/material.dart';

import 'proxo_safe_area.dart';

class LandscapeAwarePage extends StatelessWidget {
  final List<Widget> views;
  final List<Widget>? lanscapeViews;

  final List<int?> portraitFlexFactors;
  final List<int?> landscapeFlexFactors;

  final bool drawSplitBorder;
  final bool useViewPadding;

  final Color? backgroundColor;

  const LandscapeAwarePage({
    Key? key,
    required this.views,
    this.lanscapeViews,
    this.portraitFlexFactors = const [null, null],
    this.landscapeFlexFactors = const [1, 1],
    this.drawSplitBorder = false,
    this.useViewPadding = false,
    this.backgroundColor,
  })  : assert(views.length == 2),
        assert(lanscapeViews == null || lanscapeViews.length == 2),
        assert(portraitFlexFactors.length == 2),
        assert(landscapeFlexFactors.length == 2),
        super(key: key);

  bool isLandscape(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return mediaQuery.orientation == Orientation.landscape;
  }

  @override
  Widget build(BuildContext context) {
    if (isLandscape(context)) return _buildLandscapeView(context);
    return _buildPortraitView(context);
  }

  Widget _buildPortraitView(BuildContext context) {
    var topView = views.first;
    var bottomView = views.last;

    if (portraitFlexFactors[0] != null) {
      topView = Expanded(
        flex: portraitFlexFactors[0]!,
        child: topView,
      );
    }

    if (portraitFlexFactors[1] != null) {
      bottomView = Expanded(
        flex: portraitFlexFactors[1]!,
        child: bottomView,
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: _buildWrappedWithViewPadding(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            topView,
            bottomView,
          ],
        ),
      ),
    );
  }

  Widget _buildLandscapeView(BuildContext context) {
    var leftView = lanscapeViews?.first ?? views.first;
    var rightView = lanscapeViews?.last ?? views.last;

    if (landscapeFlexFactors[0] != null) {
      leftView = Expanded(
        flex: landscapeFlexFactors[0]!,
        child: leftView,
      );
    }

    if (landscapeFlexFactors[1] != null) {
      rightView = Expanded(
        flex: landscapeFlexFactors[1]!,
        child: rightView,
      );
    }

    final viewPadding = MediaQuery.of(context).viewPadding;

    final leftPaddingPresent = viewPadding.left != 0.0;
    final rightPaddingPresent = viewPadding.right != 0.0;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: _buildWrappedWithViewPadding(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (drawSplitBorder && leftPaddingPresent)
              const VerticalDivider(width: 1),
            leftView,
            if (drawSplitBorder) const VerticalDivider(width: 1),
            rightView,
            if (drawSplitBorder && rightPaddingPresent)
              const VerticalDivider(width: 1),
          ],
        ),
      ),
    );
  }

  Widget _buildWrappedWithViewPadding({
    required Widget child,
  }) {
    if (useViewPadding) {
      return ProxoSafeArea(child: child);
    }

    return child;
  }
}
