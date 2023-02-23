import 'dart:math';

import '../data/enums/player_mark.dart';
import '../data/models/board_cell.dart';
import 'game_field_helper.dart';

class BoardLogicWrapper {
  final List<PlayerMark> field;

  const BoardLogicWrapper(this.field);

  List<BoardCell> get emptyCells {
    return field
        .asMap()
        .entries
        .where((entry) => entry.value == PlayerMark.none)
        .map((entry) => BoardCell(entry.key, entry.value))
        .toList();
  }

  BoardCell? get randomFreeCell {
    final freeCells = emptyCells;
    final freeCellsSize = emptyCells.length;

    if (freeCells.isEmpty || freeCellsSize > boardCellsCount) return null;
    if (freeCellsSize == 1) return freeCells.first;

    final randomIndex = Random().nextInt(freeCellsSize - 1);

    return freeCells[randomIndex];
  }

  int? getWinningIndexFor(PlayerMark mark) {
    final freeCells = emptyCells;
    final freeCellsSize = emptyCells.length;

    if (freeCells.isEmpty || freeCellsSize > boardCellsCount) return null;

    for (final freeCell in freeCells) {
      final fieldCopy = List<PlayerMark>.from(field);

      fieldCopy[freeCell.index] = mark;

      final assesment = assesField(freeCell.index, fieldCopy);

      final gameFinished = assesment.isGameFinished();
      final gameWon = assesment.winner == mark;

      if (gameFinished && gameWon) return freeCell.index;
    }

    return null;
  }
}
