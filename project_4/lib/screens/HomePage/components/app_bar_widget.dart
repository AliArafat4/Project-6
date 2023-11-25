import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:project_4/screens/filter/filter_screen.dart';

PreferredSizeWidget homeAppBarWidget({
  required BuildContext context,
  required AdvancedDrawerController advancedDrawerController,
}) {
  return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: InkWell(
        onTap: () {
          advancedDrawerController.showDrawer();
        },
        child: const Icon(
          Icons.menu,
          color: Colors.black,
          size: 25,
        ),
      ),
      actions: [
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const FilterScreen()));
          },
          child: const Icon(
            Icons.filter_list,
            color: Colors.black,
            size: 25,
          ),
        ),
        const SizedBox(
          width: 12,
        )
      ],
      title: Image.asset(
        'assets/images/appbar_logo.png',
        height: 25,
      ));
}
