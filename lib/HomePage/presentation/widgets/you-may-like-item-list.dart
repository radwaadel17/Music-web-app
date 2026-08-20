import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/models/you-may-like-item.dart';
import 'package:streamingapp/utils/colors-app.dart';
import 'package:streamingapp/utils/text-styles.dart';

class YouMayLikeListItem extends StatelessWidget {
  const YouMayLikeListItem({
    super.key,
    required this.item,
  });

  final YouMayLike item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 105, 
      child: Column(
        children: [
          ClipOval(
            child: Image.asset(
              item.image,
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 6),

          SizedBox(
            height: 20, 
            child: Text(
              item.title,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextAppStyles.textStyle15SemiBold(context),
            ),
          ),
           
           const SizedBox(height: 6),
          SizedBox(
            height: 20, 
            child: Text(
              item.subtitle,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextAppStyles.textStyle13Regular(context)
                  .copyWith(color: ColorsApp.grey),
            ),
          ),
        ],
      ),
    );
  }
}