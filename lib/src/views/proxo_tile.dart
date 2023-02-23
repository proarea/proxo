import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ProxoTile extends StatelessWidget {
  static final titleGroup = AutoSizeGroup();
  static final subtitleGroup = AutoSizeGroup();

  final String title;
  final String? subtitle;
  final String? pageRoute;
  final VoidCallback? onTap;
  final Color? iconColor;
  final IconData? iconData;
  final Widget? trailing;
  final Widget? leading;
  final AutoSizeGroup? overrideTitleGroup;
  final AutoSizeGroup? overrideSubtitleGroup;

  const ProxoTile({
    Key? key,
    required this.title,
    this.subtitle,
    this.onTap,
    this.iconColor,
    this.iconData,
    this.pageRoute,
    this.trailing,
    this.leading,
    this.overrideTitleGroup,
    this.overrideSubtitleGroup,
  }) : super(key: key);

  void _navigateToRoute(BuildContext context) {
    final pageRoute = this.pageRoute;

    if (pageRoute == null) return;

    Navigator.of(context).pushNamed(pageRoute);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final subtitle = this.subtitle;
    final leading = this.leading;
    final icon = iconData != null ? Icon(iconData, size: 32) : null;
    final onRoute = pageRoute != null ? () => _navigateToRoute(context) : null;

    return Container(
      color: theme.cardColor,
      child: Material(
        color: Colors.transparent,
        child: ListTile(
          iconColor: iconColor,
          leading: leading ?? icon,
          trailing: trailing,
          title: AutoSizeText(
            title,
            group: overrideTitleGroup ?? titleGroup,
            style: Theme.of(context).textTheme.headline5,
            minFontSize: 16,
            maxFontSize: 20,
            maxLines: 1,
          ),
          subtitle: subtitle != null ? _buildSubtitle(subtitle) : null,
          onTap: onTap ?? onRoute,
        ),
      ),
    );
  }

  Widget _buildSubtitle(String subtitle) {
    return AutoSizeText(
      subtitle,
      group: overrideSubtitleGroup ?? subtitleGroup,
      minFontSize: 9,
      maxFontSize: 14,
      maxLines: 1,
    );
  }
}
