import 'package:flutter/material.dart';
import 'package:resopnsive_adaptive/views/home_view/widgets/sliver_list_item.dart';

class CustomSliverListView extends StatelessWidget {
  const CustomSliverListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) => const SliverListItem(),
      itemCount: 20,
    );
  }
}
