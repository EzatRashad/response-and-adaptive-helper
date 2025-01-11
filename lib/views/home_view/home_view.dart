import 'package:flutter/material.dart';
import 'package:resopnsive_adaptive/views/home_view/widgets/home_view_body.dart';

import 'widgets/custom_drawar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
      print( 'layout builder width =${MediaQuery.sizeOf(context).width.toString()}');

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xffDBDBDB),
      appBar:MediaQuery.sizeOf(context).width<=900? AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.menu,color: Colors.white,),
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
        ),
      ):null,
      drawer: const CustomDrawer(),
      body: const HomeViewBody(),
    );
  }
}
