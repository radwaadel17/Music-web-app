
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:streamingapp/utils/assets.dart';
import 'package:streamingapp/utils/colors-app.dart';
class MusicControlTab extends StatelessWidget {
  const MusicControlTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
     
      decoration: BoxDecoration(
         color: ColorsApp.secondaryColor,
        border: Border(left: BorderSide(color: ColorsApp.grey, width: 1)),
      ) , 
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(child: SizedBox(width: 10)),
         FittedBox(child: SvgPicture.asset(Assets.imagesMessageRound)),
          Flexible(child: SizedBox(width: 10)),
          SvgPicture.asset(Assets.imagesAddToList),
          Flexible(child: SizedBox(width: 10)),
          SvgPicture.asset(Assets.imagesDotsWhite),
          Flexible(child: SizedBox(width: 10)),
          SvgPicture.asset(Assets.imagesVolume),
          Flexible(child: SizedBox(width: 10)),
        ],
      ),
    );
  }
}

