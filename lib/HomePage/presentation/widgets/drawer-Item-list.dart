import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
          title: Text(
            'Home',
            style: TextAppStyles.textStyle19Medium(
              context,
            ).copyWith(color: ColorsApp.blueColor),
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

class CustomListTileActiveAndNonActive extends StatelessWidget {
  const CustomListTileActiveAndNonActive({
    super.key,
    this.icon,
    required this.title,
    required this.isActive,
  });
  final String? icon;
  final String title;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: isActive ? SvgPicture.asset(icon ?? Assets.imagesActiveIconRed) : null,
      title: Text(
        title,
        style: isActive
            ? TextAppStyles.textStyle19Medium(
                context,
              ).copyWith(color: ColorsApp.redColor)
            : TextAppStyles.textStyle19Medium(
                context,
              ).copyWith(color: ColorsApp.grey),
      ),
    );
  }
}

class NonActiveDrawerItemFirst extends StatelessWidget {
  const NonActiveDrawerItemFirst({
    super.key,
    required this.icon,
    required this.txt,
  });
  final String icon;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(icon),
      title: Text(txt, style: TextAppStyles.textStyle19Medium(context)),
    );
  }
}

class ActiveDrawerItemFirst extends StatelessWidget {
  const ActiveDrawerItemFirst({
    super.key,
    required this.icon,
    required this.txt,
  });
  final String icon;
  final String txt;
  @override

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffEE4950),
        borderRadius: BorderRadius.circular(3.82),
      ),
      child: ListTile(
        leading: SvgPicture.asset(icon),
        title: Text(txt, style: TextAppStyles.textStyle19Bold(context)),
      ),
    );
  }
}
