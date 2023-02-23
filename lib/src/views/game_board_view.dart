import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/game/game.dart';
import '../bloc/proxo_control/proxo_control.dart';
import '../data/enums/player_mark.dart';
import '../data/models/assesment_result.dart';
import '../data/models/cell.dart';
import 'cell_view.dart';

class GameBoardView extends StatelessWidget {
  final List<PlayerMark> field;
  final bool blocked;
  final GameCubit gameCubit;
  final AssesmentResult? assesment;

  const GameBoardView({
    Key? key,
    required this.field,
    required this.blocked,
    required this.gameCubit,
    this.assesment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final minSize = min(
            constraints.maxWidth,
            constraints.maxHeight,
          );
          final cubit = context.read<ProxoControlCubit>();
          return SizedBox(
            width: minSize,
            height: minSize,
            child: Wrap(
              children: field.asMap().entries.map((markEntry) {
                return _buildCell(
                  context,
                  markEntry.key,
                  markEntry.value,
                  minSize / 3,
                  cubit.settings.boardIndexesEnables,
                );
              }).toList(),
            ),
          );
        },
      ),
    );
  }

  Widget _buildCell(
    BuildContext context,
    int index,
    PlayerMark mark,
    double cellSize,
    bool showIndexes,
  ) {
    final lastAssesment = assesment;
    final winningIds = lastAssesment?.winningCellIds ?? [];

    final cell = Cell(
      mark: mark,
      winningCell: winningIds.contains(index),
      gameFinished: lastAssesment?.isGameFinished() ?? false,
    );

    return CellView(
      size: cellSize,
      cell: cell,
      index: showIndexes ? index + 1 : null,
      onTap: blocked ? null : () => gameCubit.makeTurn(index),
    );
  }
}
