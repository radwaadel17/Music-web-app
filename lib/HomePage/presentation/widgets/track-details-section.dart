import 'package:flutter/material.dart';
import 'package:streamingapp/utils/colors-app.dart';
import 'package:streamingapp/utils/text-styles.dart';

class TrackDetailsSection extends StatelessWidget {
  const TrackDetailsSection({super.key});

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

        const Spacer(),

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

        const Spacer(),

        // 4. أزرار التحكم في التشغيل
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.skip_previous_rounded),
              color: ColorsApp.lightGrey,
              iconSize: 32,
              onPressed: () {},
            ),
            const SizedBox(width: 16),
            // زر التشغيل/الإيقاف
            Container(
              decoration: BoxDecoration(
                color: ColorsApp.redColor,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: const Icon(Icons.pause_rounded),
                color: ColorsApp.whiteColor, // الأيقونة بيضاء
                iconSize: 38,
                onPressed: () {},
              ),
            ),
            const SizedBox(width: 16),
            IconButton(
              icon: const Icon(Icons.skip_next_rounded),
              color: ColorsApp.lightGrey,
              iconSize: 32,
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
