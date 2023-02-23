import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/bloc/game/game_cubit.dart';
import 'src/bloc/game/game_state.dart';
import 'src/data/enums/player_mark.dart';
import 'src/helpers/game_field_helper.dart';
import 'src/helpers/players/bot_player.dart';
import 'src/helpers/players/human_player.dart';
import 'src/helpers/strategies/easy_bot_strategy.dart';
import 'src/helpers/strategies/hard_bot_strategy.dart';
import 'src/pages/about_page.dart';
import 'src/pages/game_page.dart';
import 'src/pages/home_page.dart';
import 'src/pages/in_development_page.dart';
import 'src/pages/opponent_selection_page.dart';
import 'src/pages/settings_page.dart';
import 'src/pages/splash_page.dart';

abstract class ProxoRoutes {
  static const home = '/';
  static const splash = '/splash';
  static const opponentSelection = '/game/opponent-selection';
  static const gameHumans = '/game/human-vs-human';
  static const gameEasyBot = '/game/human-vs-bot/easy';
  static const gameHardBot = '/game/human-vs-bot/hard';
  static const gameEasyBots = '/game/bot-vs-bot/easy';
  static const gameHardBots = '/game/bot-vs-bot/hard';
  static const settings = '/settings';
  static const about = '/about';
  static const inDevelopment = '/in-development';
}

Route? onGenerateRoute(RouteSettings settings) {
  return CupertinoPageRoute(
    builder: routes[settings.name]!,
  );
}

final routes = {
  ProxoRoutes.home: (context) => const HomePage(),
  ProxoRoutes.splash: (context) => const SplashPage(),
  ProxoRoutes.opponentSelection: (context) => const OpponentSelectionPage(),
  ProxoRoutes.gameHumans: _buildHumansGamePageRoute,
  ProxoRoutes.gameEasyBot: _buildHumanEasyBotGamePageRoute,
  ProxoRoutes.gameHardBot: _buildHumanHardBotGamePageRoute,
  ProxoRoutes.gameEasyBots: _buildEasyBotsGamePageRoute,
  ProxoRoutes.gameHardBots: _buildHardBotsGamePageRoute,
  ProxoRoutes.settings: (context) => const SettingsPage(),
  ProxoRoutes.about: (context) => const AboutPage(),
  ProxoRoutes.inDevelopment: (context) => const InDevelopmentPage(),
};

Widget _buildHumansGamePageRoute(BuildContext context) {
  return BlocProvider(
    create: (_) {
      final inititalState = GameState.start(
        players: [
          HumanPlayer(mark: PlayerMark.x),
          HumanPlayer(mark: PlayerMark.o),
        ],
        field: cleanField,
      );
      return GameCubit(inititalState);
    },
    child: const GamePage(),
  );
}

Widget _buildHumanEasyBotGamePageRoute(BuildContext context) {
  return BlocProvider(
    create: (_) {
      final inititalState = GameState.start(
        players: [
          HumanPlayer(mark: PlayerMark.x),
          BotPlayer(
            mark: PlayerMark.o,
            strategy: EasyBotStrategy(PlayerMark.o),
          ),
        ],
        field: cleanField,
      );
      return GameCubit(inititalState);
    },
    child: const GamePage(),
  );
}

Widget _buildHumanHardBotGamePageRoute(BuildContext context) {
  return BlocProvider(
    create: (_) {
      final inititalState = GameState.start(
        players: [
          HumanPlayer(mark: PlayerMark.x),
          BotPlayer(
            mark: PlayerMark.o,
            strategy: HardBotStrategy(PlayerMark.o),
          ),
        ],
        field: cleanField,
      );
      return GameCubit(inititalState);
    },
    child: const GamePage(),
  );
}

Widget _buildEasyBotsGamePageRoute(BuildContext context) {
  return BlocProvider(
    create: (_) {
      final inititalState = GameState.start(
        players: [
          BotPlayer(
            mark: PlayerMark.x,
            strategy: EasyBotStrategy(PlayerMark.x),
          ),
          BotPlayer(
            mark: PlayerMark.o,
            strategy: EasyBotStrategy(PlayerMark.o),
          ),
        ],
        field: cleanField,
        fieldBlocked: true,
      );
      return GameCubit(inititalState);
    },
    child: const GamePage(),
  );
}

Widget _buildHardBotsGamePageRoute(BuildContext context) {
  return BlocProvider(
    create: (_) {
      final inititalState = GameState.start(
        players: [
          BotPlayer(
            mark: PlayerMark.x,
            strategy: HardBotStrategy(PlayerMark.x),
          ),
          BotPlayer(
            mark: PlayerMark.o,
            strategy: HardBotStrategy(PlayerMark.o),
          ),
        ],
        field: cleanField,
        fieldBlocked: true,
      );
      return GameCubit(inititalState);
    },
    child: const GamePage(),
  );
}
