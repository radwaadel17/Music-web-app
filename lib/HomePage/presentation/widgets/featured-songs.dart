import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:streamingapp/utils/assets.dart';
import 'package:streamingapp/utils/text-styles.dart';

class FeaturedSongsColumn extends StatelessWidget {
  const FeaturedSongsColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "FEATURED SONGS",
            style: TextAppStyles.textStyle13Bold(context),
          ),
           Text(
                "P o s t M a l o n e",
                style: TextAppStyles.textStyle22Light(
                  context,
                ),
              ),
              Text(
                "Circles",
                style: TextAppStyles.textStyle38Bold(
                  context,
                ),
              ),
              Spacer() , 
          Row(
            children: [
              SvgPicture.asset(Assets.imagesDots),
              SizedBox(width: 20),
              SvgPicture.asset(Assets.imagesHeartGrey),
              SizedBox(width: 20),
              Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  color: Color(0xffEE4950),
                  borderRadius: BorderRadius.circular(3.82),
                ),
                child: Center(
                  child: Text(
                    "Play",
                    style: TextAppStyles.textStyle15Bold(
                      context,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
