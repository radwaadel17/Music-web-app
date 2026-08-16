import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:streamingapp/utils/assets.dart';
import 'package:streamingapp/utils/colors-app.dart';
import 'package:streamingapp/utils/models/drawerModel.dart';
import 'package:streamingapp/utils/text-styles.dart';

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