import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/models/categories-Grid-item-model.dart';
import 'package:streamingapp/utils/text-styles.dart';

class CategoriesGridItem extends StatelessWidget {
  const CategoriesGridItem({super.key, required this.categoriesGridItemModel});
 final  CategoriesGridItemModel categoriesGridItemModel ; 
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 210.7 / 91.56,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff1E1E1E),
          borderRadius: BorderRadius.circular(3.82),
          image: DecorationImage(
            image: AssetImage(categoriesGridItemModel.imagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            categoriesGridItemModel.categoryName,
            style: TextAppStyles.textStyle22SemiBold(context),
          ),
       
        ),
      ),
    );
  }
}