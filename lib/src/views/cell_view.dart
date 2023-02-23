import 'package:flutter/material.dart';

import '../data/enums/player_mark.dart';
import '../data/models/cell.dart';
import 'index_view.dart';
import 'mark_view.dart';

class CellView extends StatelessWidget {
  final Cell cell;
  final VoidCallback? onTap;
  final double size;
  final int? index;

  const CellView({
    Key? key,
    this.cell = const Cell(),
    this.onTap,
    this.size = 40.0,
    this.index,
  }) : super(key: key);

  bool _isTapable() {
    if (cell.gameFinished) return false;
    if (cell.mark != PlayerMark.none) return false;
    return true;
  }

  Color? get _cellColor {
    if (cell.winningCell) return Colors.amber.shade200;
    if (cell.gameFinished) return Colors.grey.shade500;
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        width: size,
        height: size,
        child: Card(
          color: _cellColor,
          child: _buildContents(),
          margin: EdgeInsets.all(size * 0.05),
        ),
      ),
      onTap: _isTapable() ? onTap : null,
    );
  }

  Widget _buildContents() {
    final iconData = cell.mark.iconData;
    final index = this.index;
    final mark = MarkView(
      mark: cell.mark,
      size: size / 2,
    );

    if (iconData == null && index == null) return const SizedBox.shrink();

    if (iconData != null && index == null) return Center(child: mark);

    if (iconData == null && index != null) {
      return _buildIndexedView(index: index);
    }

    if (index == null) return Center(child: mark);

    return _buildIndexedView(
      child: mark,
      index: index,
    );
  }

  Widget _buildIndexedView({
    required int index,
    Widget? child,
  }) {
    final markSize = child == null ? size * 0.2 : size * 0.05;
    return Stack(
      fit: StackFit.expand,
      alignment: Alignment.center,
      children: [
        _buildWrappedPositioned(
          centered: child == null,
          child: IndexView(
            index: index,
            size: markSize,
          ),
        ),
        if (child != null) child,
      ],
    );
  }

  Widget _buildWrappedPositioned({
    bool centered = true,
    required Widget child,
  }) {
    if (centered) {
      return Center(child: child);
    }

    return Positioned(
      left: size * 0.1,
      bottom: size * 0.1,
      child: child,
    );
  }
}
