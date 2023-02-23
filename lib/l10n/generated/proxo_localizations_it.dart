import 'proxo_localizations.dart';

/// The translations for Italian (`it`).
class ProxoLocalizationsIt extends ProxoLocalizations {
  ProxoLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get restart => 'Riavviare';

  @override
  String get play => 'Giocare';

  @override
  String get scoreBoard => 'Classifica';

  @override
  String get settings => 'Impostazioni';

  @override
  String get about => 'Informazioni sull\'app';

  @override
  String get exit => 'Uscire';

  @override
  String get back => 'Tornare';

  @override
  String get inDevMessage => 'In questo momento un felice sviluppatore ucraino sta cercando di offrirti questa funzionalità! ❤️';

  @override
  String currentPlayer(String player) {
    return 'Tocca a $player!';
  }

  @override
  String playerWon(String player) {
    return '$player ha vinto!';
  }

  @override
  String get draw => 'Pareggio!';

  @override
  String get opponents => 'Avversari 🤼';

  @override
  String get humanHumanTitle => 'Uomo contro Uomo';

  @override
  String get humanHumanDescription => 'Gioca con un amico!';

  @override
  String get humanEasyBotTitle => 'Uomo contro Bot Ordinario';

  @override
  String get humanEasyBotDescription => 'Divertiti a sconfiggere i deboli!';

  @override
  String get humanHardBotTitle => 'Uomo contro Bot Complicato';

  @override
  String get humanHardBotDescription => 'Sudiamo!';

  @override
  String get easyBotsTitle => 'Lotta dei Bot Ordinari';

  @override
  String get easyBotsDescription => 'Supporta, scommetti, divertiti!';

  @override
  String get hardBotsTitle => 'Lotta dei Bot Complicati';

  @override
  String get hardBotsDescription => 'Guarda et sii geloso!';

  @override
  String get language => 'Lingua';

  @override
  String get theme => 'Tema';

  @override
  String get light => 'Chiaro';

  @override
  String get dark => 'Scuro';

  @override
  String get cellNumberTitle => 'Numeri di cellule';

  @override
  String get cellNumberDescription => 'Mostrare il numero di cellula a bordo';

  @override
  String get appName => 'Nome dell\'App';

  @override
  String get appLaunchIcon => 'Icona di Avvio';

  @override
  String get version => 'Versione';

  @override
  String get buildNumber => 'Numero di messa in opera';

  @override
  String get bundleId => 'Bundle ID';

  @override
  String get company => 'Azienda';

  @override
  String get proarea => 'Agenzia Digitale ProArea';

  @override
  String get viacheslav => 'Viacheslav Sheviakov';

  @override
  String get leadDeveloper => 'Sviluppatore Principale';

  @override
  String get boardMember => 'Membro del Consiglio';

  @override
  String get bogdan => 'Bogdan Aksonenko';

  @override
  String get ceo => 'L\'Amministratore Delegato';

  @override
  String get polina => 'Polina Bieliaeva';

  @override
  String get translator => 'Traduttrice';

  @override
  String get accountManager => 'Account Manager';

  @override
  String get qa => 'AQ';

  @override
  String playerToCell(String player, int cell) {
    return '$player a $cell';
  }

  @override
  String get noTurnsYet => 'Nessuna mossa ancora!';
}
