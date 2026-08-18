import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/presentation/widgets/music-content-row.dart';
import 'package:streamingapp/HomePage/presentation/widgets/search-bar.dart';
import 'package:streamingapp/utils/assets.dart';
import 'package:streamingapp/utils/colors-app.dart';
import 'package:streamingapp/utils/size-config.dart';

class MainContentWidget extends StatelessWidget {
  const MainContentWidget({super.key});
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
    SizeConfig.init(context);
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1003.58 / 453.99,
            child: Container(
              decoration: BoxDecoration(
                color: ColorsApp.blueColor,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(Assets.imagesBanner2),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    SearchBarRow(),
                    MusicContentRow(musicTypes: musicTypes),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

