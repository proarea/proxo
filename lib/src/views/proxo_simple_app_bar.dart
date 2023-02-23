import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ProxoSimpleAppBar extends StatelessWidget {
  final String title;
  final Widget? subtitle;
  final double horizontalMargins;
  final Widget? leading;
  final Widget? trailing;
  final bool applyViewPaddings;

  const ProxoSimpleAppBar({
    Key? key,
    required this.title,
    this.subtitle,
    this.horizontalMargins = 12,
    this.applyViewPaddings = false,
    this.leading,
    this.trailing,
  }) : super(key: key);

  bool canGoBack(BuildContext context) => Navigator.canPop(context);

  @override
  Widget build(BuildContext context) {
    final leading =
        this.leading ?? (canGoBack(context) ? _buildBackButton(context) : null);
    final trailing = this.trailing;
    final viewPadding = MediaQuery.of(context).viewPadding;
    final subtitle = this.subtitle;

    final textTheme = Theme.of(context).textTheme;

    Widget child = Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(width: horizontalMargins),
        if (leading != null) leading,
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AutoSizeText(
                title,
                style: textTheme.headlineSmall,
                minFontSize: 14,
                maxLines: 1,
              ),
              if (subtitle != null) subtitle,
            ],
          ),
        ),
        if (trailing != null)
          trailing
        else if (leading != null)
          _buildInvisibleView(leading),
        SizedBox(width: horizontalMargins)
      ],
    );

    if (applyViewPaddings) {
      child = Padding(
        padding: EdgeInsets.only(
          top: viewPadding.top,
          bottom: viewPadding.bottom,
        ),
        child: child,
      );
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: child,
    );
  }

  Widget _buildInvisibleView(Widget leading) {
    return Visibility(
      visible: false,
      maintainSize: true,
      maintainState: true,
      maintainAnimation: true,
      child: leading,
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return IconButton(
      onPressed: Navigator.of(context).pop,
      icon: const Icon(Icons.arrow_back_ios_new),
    );
  }
}
