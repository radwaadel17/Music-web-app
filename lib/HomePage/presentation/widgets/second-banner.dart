import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/presentation/widgets/music-content-row-widget.dart';
import 'package:streamingapp/HomePage/presentation/widgets/search-bar.dart';
import 'package:streamingapp/HomePage/presentation/widgets/track-details-section.dart';
import 'package:streamingapp/utils/assets.dart';
import 'package:streamingapp/utils/colors-app.dart';

class SecondBannerWidget extends StatelessWidget {
  const SecondBannerWidget({super.key});
   static const List<String> musicTypes = [
    "R&B",
    "Pop",
    "Rap",
    "Ballad",
    "Country",
    "Hip Hop",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       SearchContainer(),
        SizedBox(height: 10),
        MusicContentRowList(musicTypes: SecondBannerWidget.musicTypes),
        SizedBox(height: 10),
        AspectRatio(
          aspectRatio: 1003.58 / 453.99,
          child: Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
        colors: [
          ColorsApp.primaryColor  , 
          ColorsApp.secondaryColor,   
       
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
              color: ColorsApp.secondaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
               
                children: [
                 Expanded(
                   child: Container(
                      decoration: BoxDecoration(
                        color: ColorsApp.blueColor,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(Assets.imagesBanner2),
                        ),
                      ),
                    ),
                 ),
                  SizedBox(width: 20),
                 Expanded(child: TrackDetailsSection()),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}