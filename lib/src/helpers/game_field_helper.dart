import '../data/enums/player_mark.dart';
import '../data/models/assesment_result.dart';

const boardCellsCount = 9;

const _winningCombinations = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6],
];

List<PlayerMark> get cleanField => List.filled(9, PlayerMark.none);

AssesmentResult assesField(
  int index,
  List<PlayerMark> field,
) {
  for (final winningCombination in _winningCombinations) {
    final assesedPlayer = field[winningCombination.first];

    if (assesedPlayer == PlayerMark.none) continue;

    final assesedCells = [
      field[winningCombination[0]],
      field[winningCombination[1]],
      field[winningCombination[2]],
    ];

    final gameFinished = assesedCells.every(
      (cell) => cell == assesedPlayer,
    );

    if (!gameFinished) continue;

    return AssesmentResult(
      winner: assesedPlayer,
      winningCellIds: winningCombination,
    );
  }

  final draw = !field.any((mark) => mark == PlayerMark.none);

  return AssesmentResult(draw: draw);
}
