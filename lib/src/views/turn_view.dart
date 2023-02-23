import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../l10n/generated/proxo_localizations.dart';
import '../data/models/turn.dart';
import 'mark_view.dart';
import 'proxo_tile.dart';

class TurnView extends StatelessWidget {
  final Turn turn;

  const TurnView(this.turn) : super(key: null);

  Color? get leadingColor {
    return turn.fieldAssesment.winner != null ? Colors.yellow.shade800 : null;
  }

  @override
  Widget build(BuildContext context) {
    final localizations = ProxoLocalizations.of(context)!;
    final turnNumberLabel = turn.turnNumber.toString();
    final playerName = turn.player.displayName;
    final cellIndex = turn.displayIndex;
    return ProxoTile(
      iconColor: leadingColor,
      trailing: AutoSizeText(
        turnNumberLabel,
        minFontSize: 12,
        maxFontSize: 24,
        maxLines: 1,
      ),
      title: localizations.playerToCell(playerName, cellIndex),
      leading: MarkView(
        mark: turn.player.mark,
        size: 24,
      ),
    );
  }
}
