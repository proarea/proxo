import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

class ProxoLoadingView extends StatelessWidget {
  const ProxoLoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingBouncingGrid.square(
      backgroundColor: Theme.of(context).primaryColor,
    );
  }
}
