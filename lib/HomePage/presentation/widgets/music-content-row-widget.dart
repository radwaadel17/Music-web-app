import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/presentation/widgets/music-types-list-item.dart';

class MusicContentRowList extends StatelessWidget {
  const MusicContentRowList({super.key, required this.musicTypes});
  final List<String> musicTypes;
  @override
  Widget build(BuildContext context) {
    
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        
        children: musicTypes.map((musicType) => Padding(
          padding: const EdgeInsets.all(10),
          child: MusicTypesListItem(musicType: musicType),
        )).toList(),
      ),
    );
  }
}
