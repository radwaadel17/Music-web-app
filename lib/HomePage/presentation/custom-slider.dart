import 'package:flutter/material.dart';
import 'package:streamingapp/utils/colors-app.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0.0),
        activeTrackColor : Color(0xFFEE4950),
        inactiveTrackColor: ColorsApp.lightGrey,
        trackHeight: 4.0,
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 14.0),
        valueIndicatorColor: ColorsApp.redColor,
      ),
      child: Slider(
        value: 155,
        min: 0,
        max: 207,
        onChanged: (value) {},
      ),
    );
  }
}
