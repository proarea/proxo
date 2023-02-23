import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class IndexView extends StatelessWidget {
  final int index;
  final double size;

  const IndexView({
    Key? key,
    required this.index,
    this.size = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = DefaultTextStyle.of(context).style.color;
    return AutoSizeText(
      index.toString(),
      style: TextStyle(
        color: color?.withOpacity(0.25),
        fontWeight: FontWeight.bold,
      ),
      minFontSize: size.roundToDouble(),
      stepGranularity: 0.1,
      maxLines: 1,
    );
  }
}
