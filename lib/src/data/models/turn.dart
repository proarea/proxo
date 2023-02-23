import 'package:equatable/equatable.dart';

import '../../helpers/players/player.dart';
import '../enums/player_mark.dart';
import 'assesment_result.dart';

class Turn extends Equatable {
  final int turnNumber;
  final Player player;
  final int cellIndex;
  final AssesmentResult fieldAssesment;
  final List<PlayerMark> field;

  int get displayIndex => cellIndex + 1;

  const Turn({
    required this.turnNumber,
    required this.player,
    required this.cellIndex,
    required this.field,
    required this.fieldAssesment,
  });

  Turn copyWith({
    int? turnNumber,
    Player? player,
    int? cellIndex,
    AssesmentResult? fieldAssesment,
    List<PlayerMark>? field,
  }) {
    return Turn(
      turnNumber: turnNumber ?? this.turnNumber,
      player: player ?? this.player,
      cellIndex: cellIndex ?? this.cellIndex,
      fieldAssesment: fieldAssesment ?? this.fieldAssesment,
      field: field ?? this.field,
    );
  }

  @override
  List<Object> get props {
    return [
      turnNumber,
      player,
      cellIndex,
      fieldAssesment,
      field,
    ];
  }
}
