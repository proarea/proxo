import 'package:flutter/material.dart';

class ProxoSafeArea extends StatelessWidget {
  final Widget? child;
  final bool top;
  final bool right;
  final bool bottom;
  final bool left;

  const ProxoSafeArea({
    Key? key,
    this.child,
    this.top = true,
    this.right = true,
    this.bottom = true,
    this.left = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewPadding = MediaQuery.of(context).viewPadding;
    return Padding(
      padding: EdgeInsets.only(
        top: top ? viewPadding.top : 0.0,
        right: right ? viewPadding.right : 0.0,
        bottom: bottom ? viewPadding.bottom : 0.0,
        left: left ? viewPadding.left : 0.0,
      ),
      child: child,
    );
  }
}
