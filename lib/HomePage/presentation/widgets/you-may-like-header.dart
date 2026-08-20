import 'package:flutter/material.dart';
import 'package:streamingapp/utils/colors-app.dart';
import 'package:streamingapp/utils/text-styles.dart';

class YouMayLikeHeader extends StatelessWidget {
  const YouMayLikeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
       children: [
         Text("You May Like", style: TextAppStyles.textStyle22SemiBold(context)),
         Spacer() , 
         Text("See more", style: TextAppStyles.textStyle13Medium(context).copyWith(color: ColorsApp.redColor)),
       ]
    );
  }
}
