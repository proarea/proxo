import '../enums/player_mark.dart';

class BoardCell {
  final int index;
  final PlayerMark mark;

  const BoardCell(this.index, this.mark);
}
