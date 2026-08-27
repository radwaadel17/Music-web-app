import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:streamingapp/HomePage/models/top-stream-model.dart';
import 'package:streamingapp/HomePage/presentation/custom-music-photo.dart';
import 'package:streamingapp/utils/assets.dart';
import 'package:streamingapp/utils/colors-app.dart';
import 'package:streamingapp/utils/text-styles.dart';

class TopStreamItem extends StatelessWidget {
  const TopStreamItem({
    super.key, required this.topStreamModel, required this.index,
  });
  final TopStreamModel topStreamModel ;
  final String index ; 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(index, style: TextAppStyles.textStyle15SemiBold(context)),
            SizedBox(width: 10),
            CustomMusicPhoto(width: 50, height: 50, image: topStreamModel.image),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                     
                    topStreamModel.title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextAppStyles.textStyle15SemiBold(context),
                  ),
                  SizedBox(height: 2),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    topStreamModel.subtitle,
                    style: TextAppStyles.textStyle15Regular(
                      context,
                    ).copyWith(color: ColorsApp.grey),
                  ),
                ],
              ),
            ),
            Text(
              topStreamModel.mins,
              style: TextAppStyles.textStyle15Regular(
                context,
              ).copyWith(color: ColorsApp.grey),
            ),
            const SizedBox(width: 10),
            Row(
              children: [
                FittedBox(child: SvgPicture.asset(Assets.imagesHeartGrey)),
                const SizedBox(width: 20),
                FittedBox(child: SvgPicture.asset(Assets.imagesDots)),
                const SizedBox(width: 20),
              ],
            ),
          ],
        ),
        SizedBox(height: 10),
        Divider(
          thickness: 1,
          color: Color(0xff313533),
          endIndent: 20,
          indent: 20,
        )
      ],
    );
  }
}
