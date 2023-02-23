import 'proxo_localizations.dart';

/// The translations for English (`en`).
class ProxoLocalizationsEn extends ProxoLocalizations {
  ProxoLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get restart => 'Restart';

  @override
  String get play => 'Play';

  @override
  String get scoreBoard => 'Score Board';

  @override
  String get settings => 'Settings';

  @override
  String get about => 'About App';

  @override
  String get exit => 'Exit';

  @override
  String get back => 'Back';

  @override
  String get inDevMessage => 'At this very moment, a happy developer from Ukraine is trying to deliver this feature to you! ❤️';

  @override
  String currentPlayer(String player) {
    return '$player\'s turn!';
  }

  @override
  String playerWon(String player) {
    return '$player won!';
  }

  @override
  String get draw => 'It\'s a draw!';

  @override
  String get opponents => '⚔️ Opponents';

  @override
  String get humanHumanTitle => 'Human vs Human';

  @override
  String get humanHumanDescription => 'Play with your friend!';

  @override
  String get humanEasyBotTitle => 'Human vs Easy Bot';

  @override
  String get humanEasyBotDescription => 'Have fun eliminating the weak!';

  @override
  String get humanHardBotTitle => 'Human vs Hard Bot';

  @override
  String get humanHardBotDescription => 'Let us sweat!';

  @override
  String get easyBotsTitle => 'Fight of Easy Bots';

  @override
  String get easyBotsDescription => 'Cheer up, make bets and enjoy!';

  @override
  String get hardBotsTitle => 'Fight of Hard Bots';

  @override
  String get hardBotsDescription => 'Watch and envy!';

  @override
  String get language => 'Language';

  @override
  String get theme => 'Theme';

  @override
  String get light => 'Light';

  @override
  String get dark => 'Dark';

  @override
  String get cellNumberTitle => 'Cell numbers';

  @override
  String get cellNumberDescription => 'Display cell number on the board';

  @override
  String get appName => 'App Name';

  @override
  String get appLaunchIcon => 'Launch Icon';

  @override
  String get version => 'Version';

  @override
  String get buildNumber => 'Build Number';

  @override
  String get bundleId => 'Bundle ID';

  @override
  String get company => 'Company';

  @override
  String get proarea => 'ProArea Digital Agency';

  @override
  String get viacheslav => 'Viacheslav Sheviakov';

  @override
  String get leadDeveloper => 'Lead Developer';

  @override
  String get boardMember => 'Board Member';

  @override
  String get bogdan => 'Bogdan Aksonenko';

  @override
  String get ceo => 'CEO';

  @override
  String get polina => 'Polina Belyaeva';

  @override
  String get translator => 'Translator';

  @override
  String get accountManager => 'Account Manager';

  @override
  String get qa => 'QA';

  @override
  String playerToCell(String player, int cell) {
    return '$player to $cell';
  }

  @override
  String get noTurnsYet => 'No turns yet!';
}
