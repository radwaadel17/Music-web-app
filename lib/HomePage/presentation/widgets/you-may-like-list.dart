import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/models/you-may-like-item.dart';
import 'package:streamingapp/HomePage/presentation/widgets/you-may-like-item-list.dart';
import 'package:streamingapp/utils/assets.dart';

class YouMayLikeList extends StatelessWidget {
  const YouMayLikeList({
    super.key,
  });

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
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
       
        children: youMayLikeList
            .map((e) => Padding(
              padding: const EdgeInsets.only(right: 20),
              child: YouMayLikeListItem(item: e),
            ))
            .toList(),
      ),
    );
  }
}
