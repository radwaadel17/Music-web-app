import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/models/categories-Grid-item-model.dart';
import 'package:streamingapp/HomePage/presentation/widgets/categories-grid-item.dart';
import 'package:streamingapp/HomePage/presentation/widgets/categories-header.dart';
import 'package:streamingapp/HomePage/presentation/widgets/list-view-of-top-stream.dart';
import 'package:streamingapp/utils/assets.dart';

class TopStreamsAndCategories extends StatelessWidget {
  const TopStreamsAndCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32, right: 30),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xff1E1E1E),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListViewOfTopStreams(),
          ),
          SizedBox(height: 40),
          CategoriesHeader(),
          SizedBox(height: 20),
          CategoriesGridView(),
        ],
      ),
    );
  }
}

class CategoriesGridView extends StatelessWidget {
  const CategoriesGridView({super.key});
  final List<CategoriesGridItemModel> categoriesList = const [
    CategoriesGridItemModel(imagePath: Assets.imagesPop, categoryName: 'Pop'),
    CategoriesGridItemModel(
      imagePath: Assets.imagesChill,
      categoryName: 'Chill',
    ),
    CategoriesGridItemModel(
      imagePath: Assets.imagesPodcast,
      categoryName: 'Podcast',
    ),
    CategoriesGridItemModel(
      imagePath: Assets.imagesChristmas,
      categoryName: 'Christmas',
    ),
    CategoriesGridItemModel(
      imagePath: Assets.imagesRomance,
      categoryName: 'Romance',
    ),
    CategoriesGridItemModel(
      imagePath: Assets.imagesHipHop,
      categoryName: 'Hip Hop',
    ),
    CategoriesGridItemModel(imagePath: Assets.imagesRock, categoryName: 'Rock'),
    CategoriesGridItemModel(imagePath: Assets.imagesJazz, categoryName: 'Jazz'),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 210.7 / 91.56, // Adjust this ratio as needed
      ),
      itemCount: categoriesList.length,
      itemBuilder: (context, index) {
        return CategoriesGridItem(
          categoriesGridItemModel: categoriesList[index],
        );
      },
    );
  }
}
