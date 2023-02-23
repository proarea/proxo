import 'package:flutter/material.dart';

class ProxoAvatar extends StatelessWidget {
  final Widget child;
  final double size;
  final double lineSize;
  final Color? color;

  const ProxoAvatar({
    Key? key,
    required this.child,
    this.size = 50,
    this.lineSize = 0,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size),
      child: _buildInnerPicture(context),
    );
  }

  Widget _buildInnerPicture(BuildContext context) {
    if (lineSize == 0) {
      return SizedBox(
        width: size,
        height: size,
        child: child,
      );
    }

    final theme = Theme.of(context);

    return Container(
      width: size,
      height: size,
      color: color ?? theme.primaryColorDark,
      padding: EdgeInsets.all(lineSize),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(size - lineSize * 2),
        child: child,
      ),
    );
  }
}
