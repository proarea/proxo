import '../../data/enums/player_mark.dart';
import '../strategies/strategy.dart';
import 'player.dart';

class BotPlayer extends Player {
  BotPlayer({
    required PlayerMark mark,
    required Strategy strategy,
  }) : super(
          bot: true,
          mark: mark,
          delay: strategy.delay,
          strategy: strategy,
        );
}
