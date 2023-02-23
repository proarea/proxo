import 'package:flutter/material.dart';

import '../../routes.dart';
import '../views/landscape_aware_view.dart';
import '../views/proarea_logo_view.dart';
import '../views/proxo_logo_view.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  void waitAndNavigate(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushNamedAndRemoveUntil(
        ProxoRoutes.home,
        (route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final minSize = MediaQuery.of(context).size.shortestSide;

    return Builder(
      builder: (context) {
        waitAndNavigate(context);
        return LandscapeAwarePage(
          useViewPadding: true,
          portraitFlexFactors: const [1, null],
          views: [
            ProxoLogoView(margin: EdgeInsets.all(minSize * 0.15)),
            ProAreaLogoView(
              margin: EdgeInsets.symmetric(horizontal: minSize * 0.3),
            ),
          ],
          lanscapeViews: const [
            ProxoLogoView(margin: EdgeInsets.all(32)),
            ProAreaLogoView(margin: EdgeInsets.all(40)),
          ],
        );
      },
    );
  }
}
