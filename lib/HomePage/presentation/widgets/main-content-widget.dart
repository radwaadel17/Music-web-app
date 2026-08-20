import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/models/new-realeases-item.dart';
import 'package:streamingapp/HomePage/models/you-may-like-item.dart';
import 'package:streamingapp/HomePage/presentation/widgets/banner-widget.dart';
import 'package:streamingapp/HomePage/presentation/widgets/new-realse-header.dart';
import 'package:streamingapp/HomePage/presentation/widgets/new-realses-list.dart';
import 'package:streamingapp/HomePage/presentation/widgets/you-may-like-header.dart';
import 'package:streamingapp/HomePage/presentation/widgets/you-may-like-list.dart';
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
   static const List<YouMayLike> youMayLikeList = [
    YouMayLike(
      title: "Way Back Home ",
      subtitle: "SHAUN",
      image: Assets.imagesCat1,
    ),
    YouMayLike(
      title: "Rockabye",
      subtitle: "The Clean Bandit",
      image: Assets.imagesCat2,
    ),
   YouMayLike(
      title: "Graduation",
      subtitle: "Kanye West",
      image: Assets.imagesCat3,
    ),
    YouMayLike(
      title: "Stay",
      subtitle: "Zedd",
      image:Assets.imagesCat4,
    ),
    YouMayLike(
      title: "abcdefu",
      subtitle: "GAYLE",
      image: Assets.imagesCat5,
    ),
     YouMayLike(
      title: "abcdefu",
      subtitle: "GAYLE",
      image: Assets.imagesCat6,
    ),
     YouMayLike(
      title: "abcdefu",
      subtitle: "GAYLE",
      image: Assets.imagesCat7,
    ),
    YouMayLike(
      title: "Way Back Home ",
      subtitle: "SHAUN",
      image: Assets.imagesCat1,
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
          SizedBox(height: 50),
          YouMayLikeHeader() , 
          SizedBox(height: 10),
          YouMayLikeList(list: youMayLikeList),
           SizedBox(height: 50),
        ],
      ),
    );
  }
}
