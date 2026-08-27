import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/presentation/custom-music-photo.dart';
import 'package:streamingapp/HomePage/presentation/custom-slider.dart';
import 'package:streamingapp/utils/assets.dart';
import 'package:streamingapp/utils/colors-app.dart';
import 'package:streamingapp/utils/text-styles.dart';

class MusicSlider extends StatelessWidget {
  const MusicSlider({
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
        Padding(
          padding: const EdgeInsets.all(8),
          child: CustomMusicPhoto( width: 60, height: 60, image:Assets.imagesRose,),
        ),

     SizedBox(width: 50) , 

        Expanded(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Flexible(
                        child: Text(
                          songName,
                          maxLines: 1,
                           overflow: TextOverflow.ellipsis,
                          style: TextAppStyles.textStyle19SemiBold(context),
                        ),
                      ), 
                      Flexible(
                        child: Text(
                          ' . $singerName ',
                          style: TextAppStyles.textStyle19Regular(context).copyWith(
                            color: ColorsApp.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Text('2:45', style: TextAppStyles.textStyle13Regular(context)),
                    SizedBox(width: 10),
                    Expanded(
                      child: CustomSlider()
                    ),
                    SizedBox(width: 10),
                    Text('3:27', style: TextAppStyles.textStyle13Regular(context)),
                  ],
                ),
              ),
              
            ],
          ),
        ),
         SizedBox(width: 50) , 
      ],
    );
  }
}


