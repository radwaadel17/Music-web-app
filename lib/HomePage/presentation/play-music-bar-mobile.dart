import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/presentation/music-slider-mobile.dart';
import 'package:streamingapp/utils/colors-app.dart';

class PlayMusicBarMobile extends StatelessWidget {
  const PlayMusicBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: ColorsApp.secondaryColor,
        border: Border(top: BorderSide(color: ColorsApp.grey, width: 1)),
      ),
      child: Row(
        children: [
          Expanded(flex: 5, child: MusicSliderMobile(songName: 'On The Ground', singerName: 'Rosé',)),
          
        ],
      ),
    );
  }
}