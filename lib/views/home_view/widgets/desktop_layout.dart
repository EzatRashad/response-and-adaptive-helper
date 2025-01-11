import 'package:flutter/material.dart';
import 'package:resopnsive_adaptive/views/home_view/widgets/custom_drawar.dart';
import 'package:resopnsive_adaptive/views/home_view/widgets/tablet_layout.dart';

import 'custom_desktop_widget.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          CustomDrawer(),
          SizedBox(width: 20),
          Expanded(flex: 3, child: TabletLayout()),
          SizedBox(width: 20),
          Expanded(child: CustomDesktopWidget()),
        ],
      ),
    );
  }
}
