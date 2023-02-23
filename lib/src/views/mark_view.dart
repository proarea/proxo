import 'package:flutter/material.dart';

import '../data/enums/player_mark.dart';

class MarkView extends StatelessWidget {
  final double size;
  final PlayerMark mark;

  const MarkView({
    Key? key,
    required this.mark,
    this.size = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      mark.iconData,
      size: size,
    );
  }
}
