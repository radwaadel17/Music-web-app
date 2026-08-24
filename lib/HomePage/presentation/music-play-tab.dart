import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:streamingapp/utils/assets.dart';

class MusicPlayTab extends StatelessWidget {
  const MusicPlayTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 10),
        SvgPicture.asset(Assets.imagesShare),
        SizedBox(width: 5),
        SvgPicture.asset(Assets.imagesSkipPrevious),
        SizedBox(width: 5),
        SvgPicture.asset(Assets.imagesPauseCircleFilled),
        SizedBox(width: 5),
        SvgPicture.asset(Assets.imagesSkipNext),
        SizedBox(width: 5),
        SvgPicture.asset(Assets.imagesRepeat),
      ],
    );
  }
}
