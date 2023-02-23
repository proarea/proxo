import '../../data/enums/player_mark.dart';
import 'player.dart';

class HumanPlayer extends Player {
  HumanPlayer({
    required PlayerMark mark,
  }) : super(
          bot: false,
          mark: mark,
        );
}
