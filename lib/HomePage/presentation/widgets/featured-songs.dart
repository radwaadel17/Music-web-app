import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:streamingapp/HomePage/presentation/widgets/custom-text-button.dart';
import 'package:streamingapp/utils/assets.dart';
import 'package:streamingapp/utils/size-config.dart';
import 'package:streamingapp/utils/text-styles.dart';

class FeaturedSongsColumn extends StatelessWidget {
  const FeaturedSongsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    //print(SizeConfig.screenWidth);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("FEATURED SONGS", style: TextAppStyles.textStyle13Bold(context)),
        Text(
          "P o s t M a l o n e",
          style: TextAppStyles.textStyle22Light(context),
        ),
        Text("Circles", style: TextAppStyles.textStyle38Bold(context)),
        Flexible(child: SizedBox(height: 25)),
        Row(
          children: [
            SvgPicture.asset(Assets.imagesDots),
            SizedBox(width: 20),
            SvgPicture.asset(Assets.imagesHeartGrey),
            SizedBox(width: 20),
            SizedBox(
             height: (SizeConfig.screenWidth <= 1003 && SizeConfig.screenWidth > 900 )  ? 30 : 40 ,
             width: 100 , 
             child: CustomTextButton(),
            ),
          ],
        ),
      ],
    );
  }
}

