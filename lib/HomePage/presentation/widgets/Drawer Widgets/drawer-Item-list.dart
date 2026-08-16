import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:streamingapp/HomePage/presentation/widgets/Drawer%20Widgets/active-drawer-item-first.dart';
import 'package:streamingapp/HomePage/presentation/widgets/Drawer%20Widgets/custom-list-tile-active-non-active.dart';
import 'package:streamingapp/HomePage/presentation/widgets/Drawer%20Widgets/non-active-drawer-item-first.dart';
import 'package:streamingapp/utils/assets.dart';
import 'package:streamingapp/utils/colors-app.dart';
import 'package:streamingapp/utils/models/drawerModel.dart';
import 'package:streamingapp/utils/text-styles.dart';

class DrawerListItems extends StatefulWidget {
  const DrawerListItems({
    super.key,
    required this.drawerItems,
    required this.drawerItemsTwo,
  });

  final List<DrawerModel> drawerItems;
  final List<String> drawerItemsTwo;

  @override
  State<DrawerListItems> createState() => _DrawerListItemsState();
}

class _DrawerListItemsState extends State<DrawerListItems> {
  int selectedIndex = 0;
  int selectedIndexTwo = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(Assets.imagesLogo),
        SizedBox(height: 20),
        ...widget.drawerItems.asMap().entries.map(
          (entry) => GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = entry.key;
              });
            },
            child: selectedIndex != entry.key
                ? NonActiveDrawerItemFirst(
                    icon: entry.value.icon,
                    txt: entry.value.title,
                  )
                : ActiveDrawerItemFirst(
                    icon: entry.value.icon,
                    txt: entry.value.title,
                  ),
          ),
        ),
        SizedBox(height: 20),
        ListTile(
          leading: SvgPicture.asset(Assets.imagesHomeIconBlue),
          trailing: SvgPicture.asset(Assets.imagesAdd),
          title: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'Home',
              style: TextAppStyles.textStyle19Medium(
                context,
              ).copyWith(color: ColorsApp.blueColor),
            ),
          ),
        ),

        Column(
          children: [
            ...widget.drawerItemsTwo.asMap().entries.map(
              (entry) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndexTwo = entry.key;
                  });
                },
                child: CustomListTileActiveAndNonActive(
                  title: entry.value.toString(),
                  isActive: selectedIndexTwo == entry.key,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
