import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:streamingapp/utils/assets.dart';
import 'package:streamingapp/utils/colors-app.dart';
import 'package:streamingapp/utils/text-styles.dart';

class NewRealsesHeader extends StatelessWidget {
  const NewRealsesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
       children: [
         Text("New Releases", style: TextAppStyles.textStyle22SemiBold(context)),
         SizedBox(width: 10),
         SvgPicture.asset(Assets.imagesPlay),
         
         Spacer() , 
         Text("See more", style: TextAppStyles.textStyle13Medium(context).copyWith(color: ColorsApp.redColor)),
       ]
    );
  }
}
