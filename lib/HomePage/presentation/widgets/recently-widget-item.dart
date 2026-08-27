import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:streamingapp/HomePage/models/recently-played-model.dart';
import 'package:streamingapp/HomePage/presentation/custom-music-photo.dart';
import 'package:streamingapp/utils/assets.dart';
import 'package:streamingapp/utils/colors-app.dart';
import 'package:streamingapp/utils/text-styles.dart';

class RecentlyWidgetItem extends StatelessWidget {
  const RecentlyWidgetItem({super.key, required this.recentlyPlayedModel, required this.indx});
  final RecentlyPlayedModel recentlyPlayedModel ;
  final String indx ; 
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(indx, style: TextAppStyles.textStyle15SemiBold(context)),
        const SizedBox(width: 10),
        CustomMusicPhoto(width: 50, height: 50, image: recentlyPlayedModel.image),
        const SizedBox(width: 10),
        Expanded(
          flex: 3, 
          child: Text(
            recentlyPlayedModel.songName,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextAppStyles.textStyle15SemiBold(context)
                .copyWith(color: ColorsApp.lightGrey),
          ),
        ),
        const SizedBox(width: 10)  , 

        // 3. Artist Name
        Expanded(
          flex: 2, 
          child: Text(
           recentlyPlayedModel.singerName, 
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextAppStyles.textStyle15Regular(context)
                .copyWith(color: ColorsApp.grey),
          ),
        ),
        const SizedBox(width: 10),

        // 4. Album Name
        Expanded(
          flex: 2,
          child: Text(
            recentlyPlayedModel.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextAppStyles.textStyle15Regular(context)
                .copyWith(color: const Color.fromARGB(255, 125, 171, 148)),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          recentlyPlayedModel.mins,
          style: TextAppStyles.textStyle15Regular(context)
              .copyWith(color: ColorsApp.grey),
        ),
        const SizedBox(width: 10),
        Row(
          children: [
            SvgPicture.asset(Assets.imagesHeartGrey),
            const SizedBox(width: 15),
            SvgPicture.asset(Assets.imagesChoosenGrey),
          ],
        ),
      ],
    );
  }
}