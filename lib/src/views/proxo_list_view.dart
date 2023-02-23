import 'package:flutter/material.dart';

class ProxoListView extends StatelessWidget {
  final List<Widget> items;
  final EdgeInsets padding;
  final bool showTopBottomDividers;
  final bool shrinkWrap;
  final ScrollController? controller;
  final bool reverse;

  const ProxoListView({
    Key? key,
    required this.items,
    this.padding = EdgeInsets.zero,
    this.showTopBottomDividers = true,
    this.shrinkWrap = true,
    this.controller,
    this.reverse = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dividersCount = showTopBottomDividers ? 2 : 0;

    return ListView.separated(
      physics: const ClampingScrollPhysics(),
      padding: padding,
      shrinkWrap: shrinkWrap,
      controller: controller,
      reverse: reverse,
      itemCount: items.length + dividersCount,
      itemBuilder: (context, index) {
        if (items.isEmpty) return const SizedBox.shrink();

        final topBottomDivider = index == 0 || index == items.length + 1;
        final updatedIndex = showTopBottomDividers ? index - 1 : index;

        if (showTopBottomDividers && topBottomDivider) {
          return const SizedBox.shrink();
        }

        return items[updatedIndex];
      },
      separatorBuilder: (_, index) {
        return const Divider(height: 1);
      },
    );
  }
}
