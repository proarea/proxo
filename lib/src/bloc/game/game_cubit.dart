import 'dart:async';
import 'dart:developer';

import '../../data/enums/player_mark.dart';
import '../../data/models/assesment_result.dart';
import '../../data/models/game_history.dart';
import '../../data/models/turn.dart';
import '../../helpers/game_field_helper.dart';
import '../base_cubit.dart';
import 'game.dart';

class GameCubit extends BaseCubit<GameState> {
  Timer? _latestOperation;

  GameCubit(GameState initialState) : super(initialState) {
    _trySetUpBotPlayer();
  }

  @override
  Future<void> close() {
    _latestOperation?.cancel();
    return super.close();
  }

  void _trySetUpBotPlayer() {
    final index = state.currentPlayerIndex;
    if (state.players[index].bot) {
      emit(state.copyWith(fieldBlocked: true));
      _makeBotTurn();
    }
  }

  @override
  void handleError(String errorMessage) {
    log(
      errorMessage,
      name: '$runtimeType',
      level: 1000,
    );
  }

  Future<void> makeTurn(int cellIndex) async {
    await performSafeAction(() async {
      final updatedField = List<PlayerMark>.from(state.field);

      if (updatedField[cellIndex] != PlayerMark.none) return;

      updatedField[cellIndex] = state.currentPlayer.mark;

      final assesment = assesField(cellIndex, updatedField);

      final winnerPresent = assesment.winner != null;
      final gameFinished = assesment.draw || winnerPresent;
      final nextPlayer = state.players[state.nextPlayerIndex];

      emit(state.copyWith(
        field: updatedField,
        currentPlayerIndex: state.nextPlayerIndex,
        lastAssesment: assesment,
        gameFinished: gameFinished,
        fieldBlocked: gameFinished || nextPlayer.bot,
        winner: gameFinished && !assesment.draw ? state.currentPlayer : null,
        history: getUpdatedHistory(
          cellIndex,
          assesment,
          updatedField,
          winnerPresent,
        ),
      ));

      if (nextPlayer.bot && !gameFinished) _makeBotTurn();
    });
  }

  GameHistory getUpdatedHistory(
    int cellIndex,
    AssesmentResult assesment,
    List<PlayerMark> field, [
    bool winning = false,
  ]) {
    final turn = Turn(
      turnNumber: state.history.latestTurnNumber + 1,
      player: state.currentPlayer,
      cellIndex: cellIndex,
      field: field,
      fieldAssesment: assesment,
    );

    return state.history.copyWith(
      turns: [...state.history.turns, turn],
    );
  }

  Future<void> _makeBotTurn() async {
    await performSafeAction(() async {
      final currentPlayer = state.currentPlayer;
      final gameFinished = state.gameFinished;

      if (!currentPlayer.bot || gameFinished) return;
      _latestOperation = Timer(
        Duration(seconds: currentPlayer.delay.toInt()),
        () {
          makeTurn(currentPlayer.strategy!.makeTurn(state.field));
        },
      );
    });
  }

  Future<void> resetGame() async {
    await performSafeAction(() async {
      emit(GameState.start(
        players: state.players,
        field: cleanField,
      ));
      _latestOperation?.cancel();
      _trySetUpBotPlayer();
    });
  }
}
