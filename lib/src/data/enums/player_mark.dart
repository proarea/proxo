import 'package:flutter/cupertino.dart';

enum PlayerMark {
  none,
  x,
  o,
}

extension PlayerMarkExtension on PlayerMark {
  IconData? get iconData {
    const markIconDataMap = {
      PlayerMark.x: CupertinoIcons.clear_thick,
      PlayerMark.o: CupertinoIcons.circle,
    };

    return markIconDataMap[this];
  }
}
