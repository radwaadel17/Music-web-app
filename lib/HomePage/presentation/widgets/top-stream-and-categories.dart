import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/presentation/widgets/list-view-of-top-stream.dart';

class TopStreamsAndCategories extends StatelessWidget {
  const TopStreamsAndCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top : 32 , right: 30 , ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xff1E1E1E),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListViewOfTopStreams()
          ),
        ],
      ),
    );
  }
}

