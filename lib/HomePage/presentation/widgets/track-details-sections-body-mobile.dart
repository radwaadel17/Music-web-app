import 'package:flutter/material.dart';
import 'package:streamingapp/utils/colors-app.dart';
import 'package:streamingapp/utils/text-styles.dart';
class TrackDetailsSectionBodyMobile extends StatelessWidget {
  const TrackDetailsSectionBodyMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'NOW PLAYING',
              style: TextAppStyles.textStyle13Regular(
                context,
              ).copyWith(color: ColorsApp.greyTwo),
            ),
            Icon(Icons.more_horiz, color: ColorsApp.greyTwo, size: 24),
          ],
        ),
    
        const Spacer(),
    
        Text(
          'Circles',
          style: TextAppStyles.textStyle22Bold(context).copyWith(),
        ),
        const SizedBox(height: 6),
        Text(
          'Post Malone',
          style: TextAppStyles.textStyle15SemiBold(
            context,
          ).copyWith(color: ColorsApp.greyTwo),
        ),
    
       Spacer(),
    
        SliderTheme(
          data: SliderThemeData(
            trackHeight: 4,
            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6),
            overlayShape: const RoundSliderOverlayShape(overlayRadius: 16),
            activeTrackColor: ColorsApp.redColor, // استخدام الأحمر للتمييز
            inactiveTrackColor: ColorsApp.grey.withOpacity(0.3),
            thumbColor: ColorsApp.redColor, // استخدام الأحمر
          ),
          child: Slider(value: 0.3, onChanged: (value) {}),
        ),
        Spacer(),    
      PlayButtonsTrackTabletDesktop(), 
      ],
    );
  }
}
class PlayButtonsTrackTabletDesktop extends StatelessWidget {
  const PlayButtonsTrackTabletDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: IconButton(
              icon: const Icon(Icons.skip_previous_rounded),
              color: ColorsApp.lightGrey,
              iconSize: 32,
              onPressed: () {},
            ),
          ),
          const SizedBox(width: 16),
          // زر التشغيل/الإيقاف
          Container(
            decoration: BoxDecoration(
              color: ColorsApp.redColor,
              shape: BoxShape.circle,
            ),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: IconButton(
                icon: const Icon(Icons.pause_rounded),
                color: ColorsApp.whiteColor,
                iconSize: 60,
                onPressed: () {},
              ),
            ),
          ),
          const SizedBox(width: 16),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: IconButton(
              icon: const Icon(Icons.skip_next_rounded),
              color: ColorsApp.lightGrey,
              iconSize: 32,
              onPressed: () {},
            ),
          ),
        ],
      );
  }
}
