import 'proxo_localizations.dart';

/// The translations for Polish (`pl`).
class ProxoLocalizationsPl extends ProxoLocalizations {
  ProxoLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get restart => 'Ponownie';

  @override
  String get play => 'Grać';

  @override
  String get scoreBoard => 'Tabela Rekordów';

  @override
  String get settings => 'Ustawienia';

  @override
  String get about => 'O aplikacji';

  @override
  String get exit => 'Wyjdź';

  @override
  String get back => 'Wróć';

  @override
  String get inDevMessage => 'W tej chwili szczęśliwy programista z Ukrainy próbuje dostarczyć Ci tę funkcję! ❤️';

  @override
  String currentPlayer(String player) {
    return 'Kolej gracza $player!';
  }

  @override
  String playerWon(String player) {
    return '$player wygrywa!';
  }

  @override
  String get draw => 'Jest remis!';

  @override
  String get opponents => 'Przeciwnicy 🪓';

  @override
  String get humanHumanTitle => 'Człowiek vs Człowiek';

  @override
  String get humanHumanDescription => 'Grać z przyjacielem!';

  @override
  String get humanEasyBotTitle => 'Człowiek vs Łatwy Bot';

  @override
  String get humanEasyBotDescription => 'Ciesz się, że pokonałem słabych!';

  @override
  String get humanHardBotTitle => 'Człowiek vs Ciężki Bot';

  @override
  String get humanHardBotDescription => 'Poćmy się!';

  @override
  String get easyBotsTitle => 'Walka Prostych Botów';

  @override
  String get easyBotsDescription => 'Wspieraj, obstawiaj, baw się dobrze!';

  @override
  String get hardBotsTitle => 'Walka Ciężkich Botów';

  @override
  String get hardBotsDescription => 'Spójrz i zazdrość!';

  @override
  String get language => 'Język';

  @override
  String get theme => 'Temat';

  @override
  String get light => 'Lekki';

  @override
  String get dark => 'Ciemny';

  @override
  String get cellNumberTitle => 'Numery komórek';

  @override
  String get cellNumberDescription => 'Wyświetl na tablicy numer komórki';

  @override
  String get appName => 'Nazwa Aplikacji';

  @override
  String get appLaunchIcon => 'Ikona Startowa';

  @override
  String get version => 'Wersja';

  @override
  String get buildNumber => 'Numer Kompilacji';

  @override
  String get bundleId => 'Identyfikator Pakietu';

  @override
  String get company => 'Firma';

  @override
  String get proarea => 'Agencja Cyfrowa ProArea';

  @override
  String get viacheslav => 'Wiaczesław Szewiakow';

  @override
  String get leadDeveloper => 'Główny Programista';

  @override
  String get boardMember => 'Członek Zarządu';

  @override
  String get bogdan => 'Bogdan Aksonenko';

  @override
  String get ceo => 'Dyrektor Generalny';

  @override
  String get polina => 'Polina Belyaeva';

  @override
  String get translator => 'Tłumacz';

  @override
  String get accountManager => 'Menadżer konta';

  @override
  String get qa => 'Kontrola jakości';

  @override
  String playerToCell(String player, int cell) {
    return '$player do $cell';
  }

  @override
  String get noTurnsYet => 'Nie ma jeszcze ruchów!';
}
