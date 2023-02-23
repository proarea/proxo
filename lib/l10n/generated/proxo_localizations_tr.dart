import 'proxo_localizations.dart';

/// The translations for Turkish (`tr`).
class ProxoLocalizationsTr extends ProxoLocalizations {
  ProxoLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get restart => 'Tekrar başlat';

  @override
  String get play => 'Oynamak';

  @override
  String get scoreBoard => 'Skor Panosu';

  @override
  String get settings => 'Ayarlar';

  @override
  String get about => 'Uygulama Hakkında';

  @override
  String get exit => 'Çıkış';

  @override
  String get back => 'Geri';

  @override
  String get inDevMessage => 'Şu anda, Ukrayna\'dan mutlu bir geliştirici bu özelliği size sunmaya çalışıyor! ❤️';

  @override
  String currentPlayer(String player) {
    return '$player\'ın sırası!';
  }

  @override
  String playerWon(String player) {
    return '$player kazandı!';
  }

  @override
  String get draw => 'Berabere bitti!';

  @override
  String get opponents => '⚔️ Rakipler';

  @override
  String get humanHumanTitle => 'İnsan vs İnsan';

  @override
  String get humanHumanDescription => 'Arkadaşınla oyna!';

  @override
  String get humanEasyBotTitle => 'İnsana vs Kolay Bot';

  @override
  String get humanEasyBotDescription => 'Zayıfları yok ederken iyi eğlenceler!';

  @override
  String get humanHardBotTitle => 'İnsana vs Sert Bot';

  @override
  String get humanHardBotDescription => 'Bırak terleelim!';

  @override
  String get easyBotsTitle => 'Kolay Botların Savaşı';

  @override
  String get easyBotsDescription => 'Neşelen, bahis oyna ve tadını çıkar!';

  @override
  String get hardBotsTitle => 'Sert Botların Savaşı';

  @override
  String get hardBotsDescription => 'İzle ve kıskan!';

  @override
  String get language => 'Dilim';

  @override
  String get theme => 'Tema';

  @override
  String get light => 'Işık';

  @override
  String get dark => 'Karanlık';

  @override
  String get cellNumberTitle => 'Hücre numaraları';

  @override
  String get cellNumberDescription => 'Tahtada bir hücre numarası göster';

  @override
  String get appName => 'Uygulama Adı';

  @override
  String get appLaunchIcon => 'Başlat Simgesi';

  @override
  String get version => 'Sürüm';

  @override
  String get buildNumber => 'Yapı Numarası';

  @override
  String get bundleId => 'Paket Kimliği';

  @override
  String get company => 'Şirket';

  @override
  String get proarea => 'ProArea Dijital Ajansı';

  @override
  String get viacheslav => 'Viaçeslav Şeviakov';

  @override
  String get leadDeveloper => 'Müşteri Adayı Geliştirici';

  @override
  String get boardMember => 'Yönetim Kurulu Üyesi';

  @override
  String get bogdan => 'Bogdan Aksonenko';

  @override
  String get ceo => 'CEO\'SU';

  @override
  String get polina => 'Polina Belyaeva';

  @override
  String get translator => 'Çevirmen';

  @override
  String get accountManager => 'Hesap Yöneticisi';

  @override
  String get qa => 'KG';

  @override
  String playerToCell(String player, int cell) {
    return '$player \'dan $cell ye';
  }

  @override
  String get noTurnsYet => 'Henüz hareket yok!';
}
