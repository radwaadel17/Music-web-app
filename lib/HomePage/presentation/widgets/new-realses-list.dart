import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/models/new-realeases-item.dart';
import 'package:streamingapp/HomePage/presentation/widgets/new-realese-list-item.dart';

class NewRealsesList extends StatelessWidget {
  const NewRealsesList({
    super.key,
    required this.newRealeases,
  });

  final List<NewRealesesItem> newRealeases;

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
