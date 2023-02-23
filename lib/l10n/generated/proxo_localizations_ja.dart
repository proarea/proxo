


import 'proxo_localizations.dart';

/// The translations for Japanese (`ja`).
class ProxoLocalizationsJa extends ProxoLocalizations {
  ProxoLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get restart => '再起動';

  @override
  String get play => 'プレイ';

  @override
  String get scoreBoard => 'スコアボード';

  @override
  String get settings => '設定';

  @override
  String get about => 'アプリについて';

  @override
  String get exit => 'アプリを終了';

  @override
  String get back => 'バック';

  @override
  String get inDevMessage => '現時点で、ウクライナの幸せな開発者がこの機能を提供しようとしています ❤️';

  @override
  String currentPlayer(String player) {
    return '$playerのターン！';
  }

  @override
  String playerWon(String player) {
    return '$player 優勝した!';
  }

  @override
  String get draw => '引き分けだ!';

  @override
  String get opponents => '⚔️ 対戦相手';

  @override
  String get humanHumanTitle => '人間 vs 人間';

  @override
  String get humanHumanDescription => 'お友達と遊んでください！';

  @override
  String get humanEasyBotTitle => '人間 vs 簡単なボット';

  @override
  String get humanEasyBotDescription => '弱いを除去する楽しみを持ちなさい!';

  @override
  String get humanHardBotTitle => '人間 vs ハードボット';

  @override
  String get humanHardBotDescription => '汗を流しましょう!';

  @override
  String get easyBotsTitle => '簡単なボットの戦い';

  @override
  String get easyBotsDescription => '元気を出して、賭けをして楽しんでください!';

  @override
  String get hardBotsTitle => 'ハードボットの戦い';

  @override
  String get hardBotsDescription => '見て嫉妬!';

  @override
  String get language => '言語';

  @override
  String get theme => 'テーマ';

  @override
  String get light => 'ライト';

  @override
  String get dark => 'ダーク';

  @override
  String get cellNumberTitle => 'セル番号';

  @override
  String get cellNumberDescription => 'ボードにセル番号を表示する';

  @override
  String get appName => 'アプリ名';

  @override
  String get appLaunchIcon => '起動アイコン';

  @override
  String get version => 'バージョン';

  @override
  String get buildNumber => 'ビルド番号';

  @override
  String get bundleId => 'バンドルID';

  @override
  String get company => '会社';

  @override
  String get proarea => 'プロエリアデジタルエージェンシー';

  @override
  String get viacheslav => 'ヴィアチェスラフ・シェヴィアコフ';

  @override
  String get leadDeveloper => 'リード開発者';

  @override
  String get boardMember => '取締役';

  @override
  String get bogdan => 'ボグダン・アクソネンコ';

  @override
  String get ceo => '最高経営責任者';

  @override
  String get polina => 'ポリーナ・ベリャエワ';

  @override
  String get translator => '翻訳者';

  @override
  String get accountManager => 'アカウントマネージャー';

  @override
  String get qa => '品質保証';

  @override
  String playerToCell(String player, int cell) {
    return '$playerは$cellに移動する';
  }

  @override
  String get noTurnsYet => 'まだターンしない！';
}
