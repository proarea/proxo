
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'proxo_localizations_en.dart';
import 'proxo_localizations_es.dart';
import 'proxo_localizations_fr.dart';
import 'proxo_localizations_it.dart';
import 'proxo_localizations_ja.dart';
import 'proxo_localizations_pl.dart';
import 'proxo_localizations_ru.dart';
import 'proxo_localizations_tr.dart';
import 'proxo_localizations_uk.dart';

/// Callers can lookup localized strings with an instance of ProxoLocalizations returned
/// by `ProxoLocalizations.of(context)`.
///
/// Applications need to include `ProxoLocalizations.delegate()` in their app's
/// localizationDelegates list, and the locales they support in the app's
/// supportedLocales list. For example:
///
/// ```
/// import 'generated/proxo_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: ProxoLocalizations.localizationsDelegates,
///   supportedLocales: ProxoLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the ProxoLocalizations.supportedLocales
/// property.
abstract class ProxoLocalizations {
  ProxoLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static ProxoLocalizations? of(BuildContext context) {
    return Localizations.of<ProxoLocalizations>(context, ProxoLocalizations);
  }

  static const LocalizationsDelegate<ProxoLocalizations> delegate = _ProxoLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('it'),
    Locale('ja'),
    Locale('pl'),
    Locale('ru'),
    Locale('tr'),
    Locale('uk')
  ];

  /// No description provided for @restart.
  ///
  /// In en, this message translates to:
  /// **'Restart'**
  String get restart;

  /// No description provided for @play.
  ///
  /// In en, this message translates to:
  /// **'Play'**
  String get play;

  /// No description provided for @scoreBoard.
  ///
  /// In en, this message translates to:
  /// **'Score Board'**
  String get scoreBoard;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About App'**
  String get about;

  /// No description provided for @exit.
  ///
  /// In en, this message translates to:
  /// **'Exit'**
  String get exit;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @inDevMessage.
  ///
  /// In en, this message translates to:
  /// **'At this very moment, a happy developer from Ukraine is trying to deliver this feature to you! ❤️'**
  String get inDevMessage;

  /// No description provided for @currentPlayer.
  ///
  /// In en, this message translates to:
  /// **'{player}\'s turn!'**
  String currentPlayer(String player);

  /// No description provided for @playerWon.
  ///
  /// In en, this message translates to:
  /// **'{player} won!'**
  String playerWon(String player);

  /// No description provided for @draw.
  ///
  /// In en, this message translates to:
  /// **'It\'s a draw!'**
  String get draw;

  /// No description provided for @opponents.
  ///
  /// In en, this message translates to:
  /// **'⚔️ Opponents'**
  String get opponents;

  /// No description provided for @humanHumanTitle.
  ///
  /// In en, this message translates to:
  /// **'Human vs Human'**
  String get humanHumanTitle;

  /// No description provided for @humanHumanDescription.
  ///
  /// In en, this message translates to:
  /// **'Play with your friend!'**
  String get humanHumanDescription;

  /// No description provided for @humanEasyBotTitle.
  ///
  /// In en, this message translates to:
  /// **'Human vs Easy Bot'**
  String get humanEasyBotTitle;

  /// No description provided for @humanEasyBotDescription.
  ///
  /// In en, this message translates to:
  /// **'Have fun eliminating the weak!'**
  String get humanEasyBotDescription;

  /// No description provided for @humanHardBotTitle.
  ///
  /// In en, this message translates to:
  /// **'Human vs Hard Bot'**
  String get humanHardBotTitle;

  /// No description provided for @humanHardBotDescription.
  ///
  /// In en, this message translates to:
  /// **'Let us sweat!'**
  String get humanHardBotDescription;

  /// No description provided for @easyBotsTitle.
  ///
  /// In en, this message translates to:
  /// **'Fight of Easy Bots'**
  String get easyBotsTitle;

  /// No description provided for @easyBotsDescription.
  ///
  /// In en, this message translates to:
  /// **'Cheer up, make bets and enjoy!'**
  String get easyBotsDescription;

  /// No description provided for @hardBotsTitle.
  ///
  /// In en, this message translates to:
  /// **'Fight of Hard Bots'**
  String get hardBotsTitle;

  /// No description provided for @hardBotsDescription.
  ///
  /// In en, this message translates to:
  /// **'Watch and envy!'**
  String get hardBotsDescription;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @light.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get light;

  /// No description provided for @dark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get dark;

  /// No description provided for @cellNumberTitle.
  ///
  /// In en, this message translates to:
  /// **'Cell numbers'**
  String get cellNumberTitle;

  /// No description provided for @cellNumberDescription.
  ///
  /// In en, this message translates to:
  /// **'Display cell number on the board'**
  String get cellNumberDescription;

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'App Name'**
  String get appName;

  /// No description provided for @appLaunchIcon.
  ///
  /// In en, this message translates to:
  /// **'Launch Icon'**
  String get appLaunchIcon;

  /// No description provided for @version.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get version;

  /// No description provided for @buildNumber.
  ///
  /// In en, this message translates to:
  /// **'Build Number'**
  String get buildNumber;

  /// No description provided for @bundleId.
  ///
  /// In en, this message translates to:
  /// **'Bundle ID'**
  String get bundleId;

  /// No description provided for @company.
  ///
  /// In en, this message translates to:
  /// **'Company'**
  String get company;

  /// No description provided for @proarea.
  ///
  /// In en, this message translates to:
  /// **'ProArea Digital Agency'**
  String get proarea;

  /// No description provided for @viacheslav.
  ///
  /// In en, this message translates to:
  /// **'Viacheslav Sheviakov'**
  String get viacheslav;

  /// No description provided for @leadDeveloper.
  ///
  /// In en, this message translates to:
  /// **'Lead Developer'**
  String get leadDeveloper;

  /// No description provided for @boardMember.
  ///
  /// In en, this message translates to:
  /// **'Board Member'**
  String get boardMember;

  /// No description provided for @bogdan.
  ///
  /// In en, this message translates to:
  /// **'Bogdan Aksonenko'**
  String get bogdan;

  /// No description provided for @ceo.
  ///
  /// In en, this message translates to:
  /// **'CEO'**
  String get ceo;

  /// No description provided for @polina.
  ///
  /// In en, this message translates to:
  /// **'Polina Belyaeva'**
  String get polina;

  /// No description provided for @translator.
  ///
  /// In en, this message translates to:
  /// **'Translator'**
  String get translator;

  /// No description provided for @accountManager.
  ///
  /// In en, this message translates to:
  /// **'Account Manager'**
  String get accountManager;

  /// No description provided for @qa.
  ///
  /// In en, this message translates to:
  /// **'QA'**
  String get qa;

  /// No description provided for @playerToCell.
  ///
  /// In en, this message translates to:
  /// **'{player} to {cell}'**
  String playerToCell(String player, int cell);

  /// No description provided for @noTurnsYet.
  ///
  /// In en, this message translates to:
  /// **'No turns yet!'**
  String get noTurnsYet;
}

class _ProxoLocalizationsDelegate extends LocalizationsDelegate<ProxoLocalizations> {
  const _ProxoLocalizationsDelegate();

  @override
  Future<ProxoLocalizations> load(Locale locale) {
    return SynchronousFuture<ProxoLocalizations>(lookupProxoLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'es', 'fr', 'it', 'ja', 'pl', 'ru', 'tr', 'uk'].contains(locale.languageCode);

  @override
  bool shouldReload(_ProxoLocalizationsDelegate old) => false;
}

ProxoLocalizations lookupProxoLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return ProxoLocalizationsEn();
    case 'es': return ProxoLocalizationsEs();
    case 'fr': return ProxoLocalizationsFr();
    case 'it': return ProxoLocalizationsIt();
    case 'ja': return ProxoLocalizationsJa();
    case 'pl': return ProxoLocalizationsPl();
    case 'ru': return ProxoLocalizationsRu();
    case 'tr': return ProxoLocalizationsTr();
    case 'uk': return ProxoLocalizationsUk();
  }

  throw FlutterError(
    'ProxoLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
