import 'package:flutter/material.dart';
import 'package:resopnsive_adaptive/views/home_view/widgets/custo_sliver_list_view.dart';
import 'package:resopnsive_adaptive/views/home_view/widgets/custom_tablet_list_view.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16.0),
      child: CustomScrollView(
          slivers: [
           
            CustomTabletListView(),
            CustomSliverListView(),
          ],
        ),
    );
  }
}