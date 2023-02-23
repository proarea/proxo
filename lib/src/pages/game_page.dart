import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../l10n/generated/proxo_localizations.dart';
import '../bloc/game/game_cubit.dart';
import '../bloc/game/game_state.dart';
import '../utils/list_utils.dart';
import '../views/game_board_view.dart';
import '../views/landscape_aware_view.dart';
import '../views/proxo_list_view.dart';
import '../views/proxo_simple_app_bar.dart';
import '../views/turn_view.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  String getPageTitle({
    required BuildContext context,
    required GameState state,
  }) {
    final localizations = ProxoLocalizations.of(context)!;

    final lastAssesment = state.lastAssesment;
    final draw = lastAssesment?.draw ?? false;

    final currentPlayer = state.currentPlayer;
    final currentPlayerLabel = localizations.currentPlayer(
      currentPlayer.displayName,
    );

    if (!state.gameFinished) return currentPlayerLabel;
    if (state.gameFinished && draw) return localizations.draw;

    final winnerLabel = state.winner!.displayName;

    return localizations.playerWon(winnerLabel);
  }

  bool isLandscape(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return mediaQuery.orientation == Orientation.landscape;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameCubit, GameState>(
      builder: (context, state) {
        final pageTitle = getPageTitle(
          context: context,
          state: state,
        );

        return LandscapeAwarePage(
          useViewPadding: true,
          drawSplitBorder: true,
          portraitFlexFactors: const [1, null],
          views: [
            _buildGameField(context, state),
            ProxoSimpleAppBar(
              applyViewPaddings: true,
              title: pageTitle,
              trailing: _buildResetGameButton(context),
            ),
          ],
          lanscapeViews: [
            _buildAppBarWithScoreboard(
              context,
              state,
              pageTitle,
            ),
            _buildGameField(context, state),
          ],
        );
      },
    );
  }

  Widget _buildGameField(
    BuildContext context,
    GameState state,
  ) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: GameBoardView(
          field: state.field,
          blocked: state.fieldBlocked,
          assesment: state.lastAssesment,
          gameCubit: context.read(),
        ),
      ),
    );
  }

  Widget _buildAppBarWithScoreboard(
    BuildContext context,
    GameState state,
    String pageTitle,
  ) {
    final shouldDrawHistory = state.history.turns.isNotEmpty;

    final controller = ScrollController();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (!controller.hasClients) return;
      controller.animateTo(
        controller.position.maxScrollExtent,
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
      );
    });
    final turnViews = state.history.turns.map<Widget>(TurnView.new).toList();
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const SizedBox(height: 16),
        ProxoSimpleAppBar(
          title: pageTitle,
          trailing: _buildResetGameButton(context),
        ),
        if (shouldDrawHistory) ...[
          Expanded(
            child: ProxoListView(
              controller: controller,
              padding: const EdgeInsets.only(bottom: 12),
              items: turnViews.groupByParts(
                2,
                const SizedBox(height: 12),
              ),
            ),
          ),
        ] else ...[
          Expanded(
            child: _buildEmptyHistoryView(context),
          ),
        ],
      ],
    );
  }

  Widget _buildEmptyHistoryView(BuildContext context) {
    final localizations = ProxoLocalizations.of(context)!;
    final text = localizations.noTurnsYet;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      alignment: Alignment.center,
      child: AutoSizeText(
        '- $text -',
        style: Theme.of(context).textTheme.headlineMedium,
        maxLines: 1,
      ),
    );
  }

  Widget _buildResetGameButton(BuildContext context) {
    return IconButton(
      onPressed: context.read<GameCubit>().resetGame,
      icon: const Icon(Icons.restart_alt),
    );
  }
}
