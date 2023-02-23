import '../enums/player_mark.dart';

class AssesmentResult {
  final PlayerMark? winner;
  final List<int>? winningCellIds;
  final bool draw;

  bool isGameFinished() => winner != null || draw;

  AssesmentResult({
    this.winner,
    this.winningCellIds,
    this.draw = false,
  });
}
