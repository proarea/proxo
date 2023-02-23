import '../../data/enums/player_mark.dart';

abstract class Strategy {
  final PlayerMark mark;
  final double delay;

  Strategy(this.mark, this.delay);

  PlayerMark get opponentsMark {
    if (mark == PlayerMark.o) return PlayerMark.x;
    return PlayerMark.o;
  }

  int makeTurn(List<PlayerMark> field);
}
