import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/models/new-realeases-item.dart';
import 'package:streamingapp/utils/colors-app.dart';
import 'package:streamingapp/utils/text-styles.dart';

class NewRealseasListItem extends StatelessWidget {
  const NewRealseasListItem({super.key, required this.newRealesesItem});
  final NewRealesesItem newRealesesItem;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 180,
          width: 180,
          decoration: BoxDecoration(
            color: ColorsApp.blueColor,
            image: DecorationImage(
             fit: BoxFit.fill,
             image : AssetImage(newRealesesItem.image ),
            ),
          ),
          
        ),
        SizedBox(height: 5 ,) , 
        Text(
          newRealesesItem.nameOfSong,
          style: TextAppStyles.textStyle15SemiBold(context),
        ),
        Text(
          newRealesesItem.artist,
          style: TextAppStyles.textStyle13Regular(
            context,
          ).copyWith(color: ColorsApp.grey),
        ),
      ],
    );
  }
}
