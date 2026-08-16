import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:streamingapp/utils/text-styles.dart';

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
      title: FittedBox(
        fit : BoxFit.scaleDown,
        child: Text(txt, style: TextAppStyles.textStyle19Medium(context))),
    );
  }
}