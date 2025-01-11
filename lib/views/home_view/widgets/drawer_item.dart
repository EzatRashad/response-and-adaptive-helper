import 'package:flutter/material.dart';

import '../../../models/drawar_model.dart';

class CustomDrawerItem extends StatelessWidget {
  final DrawarItemModel draweItemModel;

  const CustomDrawerItem({
    super.key,
    required this.draweItemModel,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(draweItemModel.icon),
      title:
          FittedBox(fit: BoxFit.scaleDown,alignment: Alignment.centerLeft, child: Text(draweItemModel.title),),
    );
  }
}
