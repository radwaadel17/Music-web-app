import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:streamingapp/utils/text-styles.dart';

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
        title: FittedBox(
          alignment: AlignmentGeometry.centerLeft,
          fit : BoxFit.scaleDown,
          child: Text(txt, style: TextAppStyles.textStyle19Bold(context))),
      ),
    );
  }
}
