


import 'proxo_localizations.dart';

/// The translations for French (`fr`).
class ProxoLocalizationsFr extends ProxoLocalizations {
  ProxoLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get restart => 'Redémarrer';

  @override
  String get play => 'Jouer';

  @override
  String get scoreBoard => 'Tableau de résultats';

  @override
  String get settings => 'Paramètres';

  @override
  String get about => 'À propos de l\'Application';

  @override
  String get exit => 'Sortir';

  @override
  String get back => 'Revenir';

  @override
  String get inDevMessage => 'En ce moment, un développeur ukrainien chanceux essaie de t\'apporter cette fonctionnalité! ❤️';

  @override
  String currentPlayer(String player) {
    return 'A $player de joer!';
  }

  @override
  String playerWon(String player) {
    return '$player a gagné !';
  }

  @override
  String get draw => 'Partie nulle!';

  @override
  String get opponents => '⚔️ Adversaires';

  @override
  String get humanHumanTitle => 'Homme vs Homme';

  @override
  String get humanHumanDescription => 'Joue avec ton ami!';

  @override
  String get humanEasyBotTitle => 'Homme vs Bot Ordinaire';

  @override
  String get humanEasyBotDescription => 'Amuse-toi à vaincre les faibles!';

  @override
  String get humanHardBotTitle => 'Homme vs Bot Complexe';

  @override
  String get humanHardBotDescription => 'Transpirons!';

  @override
  String get easyBotsTitle => 'Combat des Bots Ordinaire';

  @override
  String get easyBotsDescription => 'Soutiens, parie, amuse-toi!';

  @override
  String get hardBotsTitle => 'Combat des Bots Complexes';

  @override
  String get hardBotsDescription => 'Regarde et sois jaloux!';

  @override
  String get language => 'Langue';

  @override
  String get theme => 'Thème';

  @override
  String get light => 'Clair';

  @override
  String get dark => 'Sombre';

  @override
  String get cellNumberTitle => 'Numéros de cellules';

  @override
  String get cellNumberDescription => 'Afficher un numéro de cellule au tableau';

  @override
  String get appName => 'Nom de l\'Application';

  @override
  String get appLaunchIcon => 'Icône de Lancement';

  @override
  String get version => 'Version';

  @override
  String get buildNumber => 'Numéro de mise en place';

  @override
  String get bundleId => 'Bundle ID';

  @override
  String get company => 'Société';

  @override
  String get proarea => 'Agence Digitale ProArea';

  @override
  String get viacheslav => 'Viacheslav Sheviakov';

  @override
  String get leadDeveloper => 'Développeur Principal';

  @override
  String get boardMember => 'Membre du Conseil d\'administration';

  @override
  String get bogdan => 'Bogdan Aksonenko';

  @override
  String get ceo => 'PDG';

  @override
  String get polina => 'Pauline Bieliaeva';

  @override
  String get translator => 'Traductrice';

  @override
  String get accountManager => 'Gestionnaire de compte';

  @override
  String get qa => 'AQ';

  @override
  String playerToCell(String player, int cell) {
    return '$player à $cell';
  }

  @override
  String get noTurnsYet => 'Encore pas de coup!';
}
