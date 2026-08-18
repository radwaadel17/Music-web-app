import 'package:flutter/material.dart';
import 'package:streamingapp/utils/text-styles.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // action
      },
      style: TextButton.styleFrom(
        backgroundColor: const Color(0xffEE4950),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3.82),
        ),
        padding: EdgeInsets.zero,
      ),
      child: Text(
        "Play",
        style: TextAppStyles.textStyle15Bold(context),
      ),
    );
  }
}
