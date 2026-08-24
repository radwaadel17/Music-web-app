import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/models/you-may-like-item.dart';
import 'package:streamingapp/HomePage/presentation/widgets/you-may-like-item-list.dart';

class YouMayLikeList extends StatelessWidget {
  const YouMayLikeList({
    super.key,
    required this.list,
  });

  final List<YouMayLike> list;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
       
        children: list
            .map((e) => Padding(
              padding: const EdgeInsets.only(right: 20),
              child: YouMayLikeListItem(item: e),
            ))
            .toList(),
      ),
    );
  }
}
