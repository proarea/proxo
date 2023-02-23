


import 'proxo_localizations.dart';

/// The translations for Russian (`ru`).
class ProxoLocalizationsRu extends ProxoLocalizations {
  ProxoLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get restart => 'Заново';

  @override
  String get play => 'Играть';

  @override
  String get scoreBoard => 'Таблица Рекордов';

  @override
  String get settings => 'Настройки';

  @override
  String get about => 'О приложении';

  @override
  String get exit => 'Выйти';

  @override
  String get back => 'Вернуться';

  @override
  String get inDevMessage => 'Прямо сейчас один счастливый разработчик из Украины пытается предоставить тебе эту функцию! ❤️';

  @override
  String currentPlayer(String player) {
    return 'Ход игрока $player!';
  }

  @override
  String playerWon(String player) {
    return 'Побеждает $player!';
  }

  @override
  String get draw => 'Ничья!';

  @override
  String get opponents => 'Противники 🤼';

  @override
  String get humanHumanTitle => 'Человек vs Человек';

  @override
  String get humanHumanDescription => 'Сыграй с другом!';

  @override
  String get humanEasyBotTitle => 'Человек vs Легкий Бот';

  @override
  String get humanEasyBotDescription => 'Развлекись побеждая слабых!';

  @override
  String get humanHardBotTitle => 'Человек vs Сложный Бот';

  @override
  String get humanHardBotDescription => 'Давайте попотеем!';

  @override
  String get easyBotsTitle => 'Бой Простых Ботов';

  @override
  String get easyBotsDescription => 'Поддерживай, делай ставки, веселись!';

  @override
  String get hardBotsTitle => 'Бой Сложных Ботов';

  @override
  String get hardBotsDescription => 'Смотри и завидуй!';

  @override
  String get language => 'Язык';

  @override
  String get theme => 'Тема';

  @override
  String get light => 'Светлая';

  @override
  String get dark => 'Темная';

  @override
  String get cellNumberTitle => 'Номера ячеек';

  @override
  String get cellNumberDescription => 'Показывать номер ячейки на доске';

  @override
  String get appName => 'Название Приложения';

  @override
  String get appLaunchIcon => 'Значок Запуска';

  @override
  String get version => 'Версия';

  @override
  String get buildNumber => 'Номер Сборки';

  @override
  String get bundleId => 'Идентификатор Пакета';

  @override
  String get company => 'Компания';

  @override
  String get proarea => 'ProArea Digital Agency';

  @override
  String get viacheslav => 'Вячеслав Шевяков';

  @override
  String get leadDeveloper => 'Ведущий Разработчик';

  @override
  String get boardMember => 'Член Совета Директоров';

  @override
  String get bogdan => 'Богдан Аксёненко';

  @override
  String get ceo => 'Исполнительный Директор';

  @override
  String get polina => 'Полина Беляева';

  @override
  String get translator => 'Переводчик';

  @override
  String get accountManager => 'Менеджер работы с клиентами';

  @override
  String get qa => 'Контроль качества';

  @override
  String playerToCell(String player, int cell) {
    return '$player на $cell';
  }

  @override
  String get noTurnsYet => 'Ходов пока нет!';
}
