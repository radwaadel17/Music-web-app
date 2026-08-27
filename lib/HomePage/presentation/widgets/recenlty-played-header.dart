import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:streamingapp/utils/assets.dart';
import 'package:streamingapp/utils/text-styles.dart';

class RecenltlyPlayedHeader extends StatelessWidget {
  const RecenltlyPlayedHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Recently Played",
          style: TextAppStyles.textStyle22SemiBold(context),
        ),
        SizedBox(width: 10),
        SvgPicture.asset(Assets.imagesRecenlty),
      ],
    );
  }
}
