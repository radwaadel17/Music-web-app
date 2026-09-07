import 'package:flutter/material.dart';
import 'package:streamingapp/utils/colors-app.dart';
import 'package:streamingapp/utils/text-styles.dart';

class CategoriesHeader extends StatelessWidget {
  const CategoriesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            'Categories',
            style: TextAppStyles.textStyle22Bold(context),
          ),
        ),
        Text(
          'See All',
          style: TextAppStyles.textStyle15Medium(
            context,
          ).copyWith(color: ColorsApp.redColor),
        ),
      ],
    );
  }
}
