import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../data/models/proxo_settings.dart';

@immutable
class ProxoControlState extends Equatable {
  final ProxoSettings settings;

  const ProxoControlState(this.settings);

  @override
  List<Object?> get props => [settings];

  ProxoControlState copyWith({
    ProxoSettings? settings,
  }) {
    return ProxoControlState(
      settings ?? this.settings,
    );
  }
}
