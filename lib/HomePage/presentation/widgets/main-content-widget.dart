import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/models/new-realeases-item.dart';
import 'package:streamingapp/HomePage/presentation/widgets/banner-widget.dart';
import 'package:streamingapp/HomePage/presentation/widgets/new-realse-header.dart';
import 'package:streamingapp/HomePage/presentation/widgets/new-realses-list.dart';
import 'package:streamingapp/utils/assets.dart';

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
  static const List<NewRealesesItem> newRealeases = [
    NewRealesesItem(
      nameOfSong: "Red (Taylor’s Version)",
      artist: "Taylor Swift",
      image: Assets.imagesRecentplayedsongscover1,
    ),
    NewRealesesItem(
      nameOfSong: "Need To Know",
      artist: "The Weekend",
      image: Assets.imagesRecentplayedsongscover2,
    ),
    NewRealesesItem(
      nameOfSong: "After Hours",
      artist: "The Weekend",
      image: Assets.imagesRecentplayedsongscover3,
    ),
    NewRealesesItem(
      nameOfSong: "HIT MACHINE",
      artist: "Soundwave",
      image: Assets.imagesRecentplayedsongscover1,
    ),
    NewRealesesItem(
      nameOfSong: "Red (Taylor’s Version)",
      artist: "Taylor Swift",
      image: Assets.imagesRecentplayedsongscover2,
    ),
    NewRealesesItem(
      nameOfSong: "After Hours",
      artist: "The Weekend",
      image: Assets.imagesRecentplayedsongscover3,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Column(
        children: [
          BannerWidget(musicTypes: musicTypes),
          SizedBox(height: 10),

          NewRealsesHeader(),
          SizedBox(height: 10),

          NewRealsesList(newRealeases: newRealeases),
        ],
      ),
    );
  }
}
