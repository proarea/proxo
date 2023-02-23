


import 'proxo_localizations.dart';

/// The translations for Spanish Castilian (`es`).
class ProxoLocalizationsEs extends ProxoLocalizations {
  ProxoLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get restart => 'Reiniciar';

  @override
  String get play => 'Jugar';

  @override
  String get scoreBoard => 'Tabla de puntuación';

  @override
  String get settings => 'Configuración';

  @override
  String get about => 'Acerca de la Aplicación';

  @override
  String get exit => 'Salida';

  @override
  String get back => 'Atrás';

  @override
  String get inDevMessage => '¡En este mismo momento, un feliz desarrollador de Ucrania está intentando ofrecerte esta función! ❤️';

  @override
  String currentPlayer(String player) {
    return '¡El turno del $player!';
  }

  @override
  String playerWon(String player) {
    return '¡$player ganó!';
  }

  @override
  String get draw => '¡Es un empate!';

  @override
  String get opponents => '⚔️ Oponentes';

  @override
  String get humanHumanTitle => 'Humano vs Humano';

  @override
  String get humanHumanDescription => '¡Juega con tu amigo!';

  @override
  String get humanEasyBotTitle => 'Humano vs Robot Fácil';

  @override
  String get humanEasyBotDescription => '¡Diviértete eliminando a los débiles!';

  @override
  String get humanHardBotTitle => 'Humano vs Robot Duro';

  @override
  String get humanHardBotDescription => '¡Vamos a sudar!';

  @override
  String get easyBotsTitle => 'Lucha de Robots Fáciles';

  @override
  String get easyBotsDescription => '¡Anímate, haz apuestas y disfruta!';

  @override
  String get hardBotsTitle => 'Lucha de Robots Duros';

  @override
  String get hardBotsDescription => '¡Mira y envidia!';

  @override
  String get language => 'Idioma';

  @override
  String get theme => 'Tema';

  @override
  String get light => 'Luz';

  @override
  String get dark => 'Oscuro';

  @override
  String get cellNumberTitle => 'Números de células';

  @override
  String get cellNumberDescription => 'Mostrar un número de celda en la pizarra';

  @override
  String get appName => 'Nombre de la Aplicación';

  @override
  String get appLaunchIcon => 'Icono de Inicio';

  @override
  String get version => 'Versión';

  @override
  String get buildNumber => 'Número de Compilación';

  @override
  String get bundleId => 'ID del Paquete';

  @override
  String get company => 'Compañía';

  @override
  String get proarea => 'Agencia Digital ProArea';

  @override
  String get viacheslav => 'Viacheslav Sheviakov';

  @override
  String get leadDeveloper => 'Desarrollador Principal';

  @override
  String get boardMember => 'Miembro de la Junta Directiva';

  @override
  String get bogdan => 'Bogdan Aksonenko';

  @override
  String get ceo => 'Consejero Delegado';

  @override
  String get polina => 'Polina Belyaeva';

  @override
  String get translator => 'Traductor';

  @override
  String get accountManager => 'Gerente de cuentas';

  @override
  String get qa => 'Control de calidad';

  @override
  String playerToCell(String player, int cell) {
    return '$player a $cell';
  }

  @override
  String get noTurnsYet => '¡Aún no hay turnos!';
}
