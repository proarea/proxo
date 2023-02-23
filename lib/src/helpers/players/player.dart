import '../../data/enums/player_mark.dart';
import '../strategies/strategy.dart';

abstract class Player {
  final bool bot;
  final PlayerMark mark;
  final double delay;
  final String? name;
  final Strategy? strategy;

  Player({
    required this.bot,
    required this.mark,
    this.strategy,
    this.delay = 0,
    this.name,
  });

  String get displayName {
    final name = this.name;
    final markLabel = mark.name.toUpperCase();

    if (name == null) return markLabel;

    return '$name ($markLabel)';
  }
}
