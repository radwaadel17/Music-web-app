import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/models/recently-played-model.dart';
import 'package:streamingapp/HomePage/presentation/widgets/recently-widget-item.dart';
import 'package:streamingapp/utils/assets.dart';

class ListViewOfRecentlyPlayed extends StatelessWidget {
  const ListViewOfRecentlyPlayed({super.key});
  static List<RecentlyPlayedModel> items = [
    RecentlyPlayedModel(
      image: Assets.imagesRecentplayedsongscover1,
      songName: "All I Want For Christmas Is You",
      singerName: "Maria Carey",
      mins: "3:54",
      title: "Album",
    ),
    RecentlyPlayedModel(
      image: Assets.imagesR2,
      songName: "On The Ground",
      singerName: "Rosé",
      mins: "3:54",
      title: "-R-",
    ),
    RecentlyPlayedModel(
      image: Assets.imagesR3,
      songName: "Donda",
      singerName: "Kanye West",
      mins: "3:54",
      title: "Donda",
    ),
    RecentlyPlayedModel(
      image: Assets.imagesR5,
      songName: "khatfony",
      singerName: "AmrDiab",
      mins: "3:54",
      title: "Album",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: RecentlyWidgetItem(
            recentlyPlayedModel: items[index],
            indx: (index + 1).toString(),
          ),
        );
      },
    );
  }
}
