import '../../data/enums/player_mark.dart';
import '../../errors/game_error.dart';
import '../board_logic_wrapper.dart';
import 'strategy.dart';

class HardBotStrategy extends Strategy {
  HardBotStrategy(PlayerMark mark) : super(mark, 1.0);

  @override
  int makeTurn(List<PlayerMark> field) {
    final boardLogic = BoardLogicWrapper(field);

    final myWinningCellIndex = boardLogic.getWinningIndexFor(mark);

    if (myWinningCellIndex != null) return myWinningCellIndex;

    final opponentWinningCellIndex = boardLogic.getWinningIndexFor(
      opponentsMark,
    );

    if (opponentWinningCellIndex != null) return opponentWinningCellIndex;

    final randomFreeCellIndex = boardLogic.randomFreeCell?.index;

    if (randomFreeCellIndex == null) throw GameError();

    return randomFreeCellIndex;
  }
}
