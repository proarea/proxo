import 'package:equatable/equatable.dart';

import '../../helpers/players/player.dart';
import 'turn.dart';

class GameHistory extends Equatable {
  final Player firstPlayer;
  final Player secondPlayer;
  final DateTime startTime;
  final DateTime? endTime;
  final List<Turn> turns;

  int get latestTurnNumber => turns.length;

  const GameHistory({
    required this.firstPlayer,
    required this.secondPlayer,
    required this.startTime,
    this.turns = const [],
    this.endTime,
  });

  GameHistory copyWith({
    Player? firstPlayer,
    Player? secondPlayer,
    DateTime? startTime,
    DateTime? endTime,
    List<Turn>? turns,
  }) {
    return GameHistory(
      firstPlayer: firstPlayer ?? this.firstPlayer,
      secondPlayer: secondPlayer ?? this.secondPlayer,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      turns: turns ?? this.turns,
    );
  }

  @override
  List<Object?> get props {
    return [
      firstPlayer,
      secondPlayer,
      startTime,
      endTime,
      turns,
    ];
  }
}
