import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/presentation/song-playing-info-tab.dart';
import 'package:streamingapp/HomePage/presentation/widgets/music-control-tab.dart';
import 'package:streamingapp/utils/colors-app.dart';

class PlayMusicBar extends StatelessWidget {
  const PlayMusicBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: ColorsApp.secondaryColor,
        border: Border(top: BorderSide(color: ColorsApp.grey, width: 1)),
      ),
      child: Row(
        children: [
          Expanded(flex: 5, child: SongPlayingInfo(songName: 'On The Ground', singerName: 'Rosé',)),
          Expanded(flex: 2, child: MusicControlTab()),
        ],
      ),
    );
  }
}
