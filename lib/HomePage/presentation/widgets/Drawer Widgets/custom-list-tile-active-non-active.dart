import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:streamingapp/utils/assets.dart';
import 'package:streamingapp/utils/colors-app.dart';
import 'package:streamingapp/utils/text-styles.dart';

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
      title: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          title,
          style: isActive
              ? TextAppStyles.textStyle19Medium(
                  context,
                ).copyWith(color: ColorsApp.redColor)
              : TextAppStyles.textStyle19Medium(
                  context,
                ).copyWith(color: ColorsApp.grey),
        ),
      ),
    );
  }
}