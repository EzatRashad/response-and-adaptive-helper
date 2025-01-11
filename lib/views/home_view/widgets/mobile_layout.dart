import 'package:flutter/material.dart';
import 'package:resopnsive_adaptive/views/home_view/widgets/custom_sliver_grid.dart';

import 'custo_sliver_list_view.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(height: 20),
            ),
            CustomSliverGrid(),
            CustomSliverListView(),
          ],
        ),
    );
  }
}