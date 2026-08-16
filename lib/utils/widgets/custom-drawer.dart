import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/presentation/widgets/drawer-Item-list.dart';
import 'package:streamingapp/utils/assets.dart';
import 'package:streamingapp/utils/colors-app.dart';
import 'package:streamingapp/utils/models/drawerModel.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static const List<DrawerModel> drawerItems = [
    DrawerModel(title: 'Home', icon: Assets.imagesHomeIcon),
    DrawerModel(title: 'Browse', icon: Assets.imagesUnfill),
    DrawerModel(title: 'Favorite', icon: Assets.imagesHeart),
    DrawerModel(title: 'Library', icon: Assets.imagesHeadphones),
  ];
  static const List<Text> drawerItemsTwo = [
    Text('For workplace'),
    Text('Rich Brian’s collections'),
    Text('deep focus'),
    Text('Lo-Fi Jazz upbeat'),
    Text('For workplace'),
    Text('Christmas playlist'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        decoration: BoxDecoration(
          color: ColorsApp.secondaryColor,
          border: Border(right: BorderSide(color: ColorsApp.grey, width: 1)),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: DrawerListItems(
              drawerItems: drawerItems,
              drawerItemsTwo: drawerItemsTwo,
            ),
          ),
        ),
      ),
    );
  }
}


