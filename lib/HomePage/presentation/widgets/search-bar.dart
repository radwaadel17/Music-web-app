import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:streamingapp/utils/assets.dart';
import 'package:streamingapp/utils/colors-app.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: deprecated_member_use
      decoration: BoxDecoration(
        color: ColorsApp.whiteColor.withOpacity(0.8),
        borderRadius: BorderRadius.circular(4.77),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.imagesSearch),
            SizedBox(width: 10),
            Expanded(
              child: FittedBox(
                fit : BoxFit.scaleDown,
                alignment: AlignmentGeometry.centerLeft,
                child: Text('Search artists, songs, albums...')),
            ),
            Container(width: 1.5, height: 25, color: Colors.grey),
            SizedBox(width: 15,) , 
            SvgPicture.asset(Assets.imagesGroup),
            SizedBox(width: 5),
          ],
        ),
      ),
    );
  }
}
class SearchBarRow extends StatelessWidget {
  const SearchBarRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        Expanded(flex: 3, child: SearchContainer()),
        Spacer(),
      ],
    );
  }
}
