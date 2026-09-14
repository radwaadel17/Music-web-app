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
      trailing: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: (child, animation) => ScaleTransition(
          scale: animation,
          child: child,
        ),
        child: isActive
            ? SvgPicture.asset(
                icon ?? Assets.imagesActiveIconRed,
                key: const ValueKey('activeIcon'),
              )
            : const SizedBox.shrink(key: ValueKey('inactiveIcon')),
      ),
      title: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 300),
        style: TextAppStyles.textStyle19Medium(context).copyWith(
          color: isActive ? ColorsApp.redColor : ColorsApp.grey,
        ),
        child: isActive
            ? Text(title   ,
              maxLines: 1,
            overflow: TextOverflow.ellipsis,
            )
            : Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
      ),
    );
  }
}