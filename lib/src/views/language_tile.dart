import 'package:flutter/material.dart';

import '../helpers/language_helper.dart';

class LanguageTile extends StatelessWidget {
  final Locale locale;
  final VoidCallback? onTap;

  const LanguageTile({
    Key? key,
    required this.locale,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final languageMeta = LanguageHelper.getNativeLanguageName(
      locale.languageCode,
    );
    return ListTile(
      leading: Text(
        languageMeta!.emoji,
        style: const TextStyle(fontSize: 28),
      ),
      title: Text('${languageMeta.nativeName} - ${languageMeta.name}'),
      onTap: onTap,
    );
  }
}
