import 'package:flutter/material.dart';
import 'package:resopnsive_adaptive/views/home_view/widgets/adaptive_layout.dart';
import 'package:resopnsive_adaptive/views/home_view/widgets/desktop_layout.dart';
import 'package:resopnsive_adaptive/views/home_view/widgets/mobile_layout.dart';
import 'package:resopnsive_adaptive/views/home_view/widgets/tablet_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => const MobileLayout(),
      tabletLayout: (context) => const TabletLayout(),
      desktopLayout: (context) => const DesktopLayout(),
    );
  }
}
 