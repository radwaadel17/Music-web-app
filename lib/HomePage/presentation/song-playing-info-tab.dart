import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/presentation/music-play-tab.dart';
import 'package:streamingapp/HomePage/presentation/music-slider.dart';

class SongPlayingInfo extends StatelessWidget {
  const SongPlayingInfo({
    super.key,
    required this.songName,
    required this.singerName,
  });
  final String songName;
  final String singerName;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Flexible(child: SizedBox(width: 50)),4
        const SizedBox(width: 50),
        MusicPlayTab(),
       // Flexible(child: SizedBox(width: 50)),
       const SizedBox(width: 50),
        Expanded(
          child: MusicSlider(songName: 'On The Ground', singerName: 'Rosé'),
        ),
      ],
    );
  }
}

