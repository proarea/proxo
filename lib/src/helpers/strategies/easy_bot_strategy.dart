import '../../data/enums/player_mark.dart';
import '../../errors/game_error.dart';
import '../board_logic_wrapper.dart';
import 'strategy.dart';

class EasyBotStrategy extends Strategy {
  EasyBotStrategy(PlayerMark mark) : super(mark, 2);

  @override
  int makeTurn(List<PlayerMark> field) {
    final boardLogic = BoardLogicWrapper(field);
    final randomFreeCellIndex = boardLogic.randomFreeCell?.index;

    if (randomFreeCellIndex == null) throw GameError();

    return randomFreeCellIndex;
  }
}
