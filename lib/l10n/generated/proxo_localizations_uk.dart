


import 'proxo_localizations.dart';

/// The translations for Ukrainian (`uk`).
class ProxoLocalizationsUk extends ProxoLocalizations {
  ProxoLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get restart => 'Спочатку';

  @override
  String get play => 'Грати';

  @override
  String get scoreBoard => 'Таблиця Рекордів';

  @override
  String get settings => 'Налаштування';

  @override
  String get about => 'Про додаток';

  @override
  String get exit => 'Вийти';

  @override
  String get back => 'Повернутись';

  @override
  String get inDevMessage => 'Просто зараз один щасливий розробник з України намагається надати тобі цю функцію ❤️';

  @override
  String currentPlayer(String player) {
    return 'Хід гравця $player!';
  }

  @override
  String playerWon(String player) {
    return 'Перемагає $player!';
  }

  @override
  String get draw => 'Нічия!';

  @override
  String get opponents => 'Супротивники 🪓';

  @override
  String get humanHumanTitle => 'Людина vs Людина';

  @override
  String get humanHumanDescription => 'Зіграй з другом!';

  @override
  String get humanEasyBotTitle => 'Людина vs Легкий Бот';

  @override
  String get humanEasyBotDescription => 'Радій перемагаючи слабких!';

  @override
  String get humanHardBotTitle => 'Людина vs Важкий Бот';

  @override
  String get humanHardBotDescription => 'Спітніймо!';

  @override
  String get easyBotsTitle => 'Сутичка Простих Ботів';

  @override
  String get easyBotsDescription => 'Підтримуй, роби ставки, розважайся!';

  @override
  String get hardBotsTitle => 'Сутичка Складних Ботів';

  @override
  String get hardBotsDescription => 'Дивись та заздри!';

  @override
  String get language => 'Мова';

  @override
  String get theme => 'Тема';

  @override
  String get light => 'Світла';

  @override
  String get dark => 'Темна';

  @override
  String get cellNumberTitle => 'Номери клітинок';

  @override
  String get cellNumberDescription => 'Відображати номери клітинки на дошці';

  @override
  String get appName => 'Назва Додатку';

  @override
  String get appLaunchIcon => 'Значок Запуску';

  @override
  String get version => 'Версія';

  @override
  String get buildNumber => 'Номер Збірки';

  @override
  String get bundleId => 'Ідентифікатор Пакету';

  @override
  String get company => 'Компанія';

  @override
  String get proarea => 'ProArea Digital Agency';

  @override
  String get viacheslav => 'Вячеслав Шевяков';

  @override
  String get leadDeveloper => 'Провідний Розробник';

  @override
  String get boardMember => 'Член Ради Директорів';

  @override
  String get bogdan => 'Богдан Аксьоненко';

  @override
  String get ceo => 'Генеральний Директор';

  @override
  String get polina => 'Поліна Бєляєва';

  @override
  String get translator => 'Перекладач';

  @override
  String get accountManager => 'Менеджер роботи з клієнтами';

  @override
  String get qa => 'Контроль якості';

  @override
  String playerToCell(String player, int cell) {
    return '$player до $cell';
  }

  @override
  String get noTurnsYet => 'Поки ходів немає!';
}
