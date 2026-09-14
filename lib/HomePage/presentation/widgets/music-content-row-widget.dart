import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/presentation/widgets/music-types-list-item.dart';

class MusicContentRowList extends StatelessWidget {
  const MusicContentRowList({super.key, required this.musicTypes});
  final List<String> musicTypes;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: musicTypes.map((musicType) => Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: MusicTypesListItem(musicType: musicType),
        ),
      )).toList(),
    );
  }
}
