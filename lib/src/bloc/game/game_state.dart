import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

import '../../data/enums/player_mark.dart';
import '../../data/models/assesment_result.dart';
import '../../data/models/game_history.dart';
import '../../helpers/players/player.dart';

@immutable
class GameState extends Equatable {
  final List<Player> players;
  final List<PlayerMark> field;
  final int currentPlayerIndex;
  final bool gameFinished;
  final bool fieldBlocked;
  final AssesmentResult? lastAssesment;
  final Player? winner;
  final GameHistory history;

  const GameState({
    required this.players,
    required this.field,
    required this.history,
    this.currentPlayerIndex = 0,
    this.gameFinished = false,
    this.fieldBlocked = false,
    this.lastAssesment,
    this.winner,
  }) : assert(players.length == 2);

  GameState.start({
    required this.players,
    required this.field,
    this.currentPlayerIndex = 0,
    this.gameFinished = false,
    this.fieldBlocked = false,
    this.lastAssesment,
    this.winner,
  })  : assert(players.length == 2),
        history = GameHistory(
          firstPlayer: players.first,
          secondPlayer: players.last,
          startTime: DateTime.now(),
        );

  Player get currentPlayer => players[currentPlayerIndex];

  int get nextPlayerIndex {
    if (currentPlayerIndex == players.length - 1) return 0;
    return currentPlayerIndex + 1;
  }

  @override
  List<Object?> get props {
    return [
      players,
      field,
      currentPlayerIndex,
      gameFinished,
      fieldBlocked,
      lastAssesment,
      winner,
      history,
    ];
  }

  GameState copyWith({
    List<Player>? players,
    List<PlayerMark>? field,
    int? currentPlayerIndex,
    bool? gameFinished,
    bool? fieldBlocked,
    AssesmentResult? lastAssesment,
    Player? winner,
    GameHistory? history,
  }) {
    return GameState(
      players: players ?? this.players,
      field: field ?? this.field,
      currentPlayerIndex: currentPlayerIndex ?? this.currentPlayerIndex,
      gameFinished: gameFinished ?? this.gameFinished,
      fieldBlocked: fieldBlocked ?? this.fieldBlocked,
      lastAssesment: lastAssesment ?? this.lastAssesment,
      winner: winner ?? this.winner,
      history: history ?? this.history,
    );
  }
}
