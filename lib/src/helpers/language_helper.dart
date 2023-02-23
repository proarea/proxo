class LanguageHelper {
  static const isoLangs = {
    'en': LanguageMeta('English', 'English', '🇺🇸'),
    'uk': LanguageMeta('Ukrainian', 'Українська', '🇺🇦'),
    'ja': LanguageMeta('Japanese', '日本語', '🇯🇵'),
    'pl': LanguageMeta('Polish', 'Polski', '🇵🇱'),
    'fr': LanguageMeta('French', 'Français', '🇫🇷'),
    'tr': LanguageMeta('Turkish', 'Türk', '🇹🇷'),
    'es': LanguageMeta('Spanish', 'Español', '🇪🇸'),
    'it': LanguageMeta('Italian', 'Italiano', '🇮🇹'),
    'ru': LanguageMeta('Russian', 'Русский', '🇷🇺'),
  };

  static LanguageMeta? getNativeLanguageName(String languageCode) {
    return isoLangs[languageCode];
  }
}

class LanguageMeta {
  final String name;
  final String nativeName;
  final String emoji;

  const LanguageMeta(this.name, this.nativeName, this.emoji);
}
