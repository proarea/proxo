import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../l10n/generated/proxo_localizations.dart';
import 'proxo_tile.dart';

class BackTile extends StatelessWidget {
  final AutoSizeGroup? group;

  const BackTile({
    Key? key,
    this.group,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProxoTile(
      iconData: Icons.arrow_back,
      iconColor: Colors.blue,
      title: ProxoLocalizations.of(context)!.back,
      onTap: Navigator.of(context).pop,
      overrideTitleGroup: group,
    );
  }
}
