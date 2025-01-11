import 'package:flutter/material.dart';

class SliverListItem extends StatelessWidget {
  const SliverListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 60,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffB4B4B4),
      ),
    );
  }
}