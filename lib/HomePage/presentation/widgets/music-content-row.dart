import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/presentation/widgets/featured-songs.dart';
import 'package:streamingapp/HomePage/presentation/widgets/music-types-column.dart';

class MusicContentRow extends StatelessWidget {
  const MusicContentRow({
    super.key,
    required this.musicTypes,
  });

  final List<String> musicTypes;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          MusicTypesColumn(musicTypes: musicTypes),
          FeaturedSongsColumn(),
        ],
      ),
    );
  }
}

