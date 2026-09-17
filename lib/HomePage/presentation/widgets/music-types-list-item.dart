import 'package:flutter/material.dart';
import 'package:streamingapp/utils/colors-app.dart';
import 'package:streamingapp/utils/text-styles.dart';

class MusicTypesListItem extends StatelessWidget {
  const MusicTypesListItem({super.key, required this.musicType});
   final String musicType;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsApp.secondaryColor,
        borderRadius: BorderRadius.circular(10),

      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              musicType,
              textAlign: TextAlign.center,
              style: TextAppStyles.textStyle15Regular(context)
            ),
          ),
        ),
      ),
    );
  }
}
