import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/models/new-realeases-item.dart';
import 'package:streamingapp/HomePage/presentation/widgets/new-realese-list-item.dart';
import 'package:streamingapp/utils/assets.dart';

class NewRealsesList extends StatelessWidget {
  const NewRealsesList({
    super.key,
  });
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
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: newRealeases
            .map((e) => Padding(
              padding: const EdgeInsets.only(right: 20),
              child: NewRealseasListItem(newRealesesItem: e),
            ))
            .toList(),
      ),
    );
  }
}
