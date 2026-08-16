import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:streamingapp/utils/assets.dart';
import 'package:streamingapp/utils/colors-app.dart';
import 'package:streamingapp/utils/models/drawerModel.dart';
import 'package:streamingapp/utils/text-styles.dart';

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
    return Drawer(
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

class DrawerListItems extends StatelessWidget {
  const DrawerListItems({
    super.key,
    required this.drawerItems,
    required this.drawerItemsTwo,
  });

  final List<DrawerModel> drawerItems;
  final List<Text> drawerItemsTwo;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(Assets.imagesLogo),
        SizedBox(height: 20),
        ...drawerItems.map(
          (item) => ListTile(
            leading: SvgPicture.asset(item.icon),
            title: Text(
              item.title,
              style: TextAppStyles.textStyle19Medium(context),
            ),
          ),
        ),
        SizedBox(height: 20),
        ListTile(
          leading: SvgPicture.asset(Assets.imagesHomeIconBlue),
          trailing: SvgPicture.asset(Assets.imagesAdd),
          title: Text(
            'Home',
            style: TextAppStyles.textStyle19Medium(
              context,
            ).copyWith(color: ColorsApp.blueColor),
          ),
        ),

        Column(
          children: [
            ...drawerItemsTwo.map(
              (item) => ListTile(
                title: Text(
                  item.data!,
                  style: TextAppStyles.textStyle19Medium(context),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
