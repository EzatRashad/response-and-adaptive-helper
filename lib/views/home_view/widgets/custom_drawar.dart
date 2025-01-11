import 'package:flutter/material.dart';
import 'package:resopnsive_adaptive/views/home_view/widgets/drawer_item.dart';

import '../../../models/drawar_model.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xffDBDBDB),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            child: Center(
              child: CircleAvatar(
                radius: 50,
                child: Icon( 
                  Icons.person,
                  size: 50,
                ),
              ),
            ),
          ),
        ...drawerItems.map((item) => CustomDrawerItem(draweItemModel: item)),
        ],
      ),
    );
  }
}
