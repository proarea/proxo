import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../themes/theme.dart';

part 'proxo_settings.g.dart';

@immutable
@HiveType(typeId: 0)
class ProxoSettings implements Equatable {
  @HiveField(0)
  final String languageCode;

  @HiveField(1)
  final String themeCode;

  @HiveField(2)
  final bool boardIndexesEnables;

  ProxoTheme get theme => ProxoThemeExtension.formString(themeCode);

  @override
  List<Object?> get props {
    return [
      languageCode,
      theme,
      boardIndexesEnables,
    ];
  }

  @override
  bool? get stringify => true;

  const ProxoSettings({
    this.languageCode = 'en',
    this.themeCode = 'light',
    this.boardIndexesEnables = false,
  });

  ProxoSettings copyWith({
    String? languageCode,
    String? themeCode,
    bool? boardIndexesEnables,
  }) {
    return ProxoSettings(
      languageCode: languageCode ?? this.languageCode,
      themeCode: themeCode ?? this.themeCode,
      boardIndexesEnables: boardIndexesEnables ?? this.boardIndexesEnables,
    );
  }
}
