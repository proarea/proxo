import '../enums/player_mark.dart';

class Cell {
  final PlayerMark mark;
  final bool gameFinished;
  final bool winningCell;

  const Cell({
    this.mark = PlayerMark.none,
    this.winningCell = false,
    this.gameFinished = false,
  });
}
