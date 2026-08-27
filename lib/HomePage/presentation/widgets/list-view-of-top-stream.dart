import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:streamingapp/HomePage/models/top-stream-model.dart';
import 'package:streamingapp/HomePage/presentation/widgets/top-stream-item.dart';
import 'package:streamingapp/utils/assets.dart';
import 'package:streamingapp/utils/colors-app.dart';
import 'package:streamingapp/utils/text-styles.dart';

class ListViewOfTopStreams extends StatefulWidget {
  const ListViewOfTopStreams({super.key});

  static const List<TopStreamModel> topStreams = [
    TopStreamModel(title: "Mistletoe", subtitle: "Justin Bieber", image: Assets.imagesR2, mins: "3.75"),
    TopStreamModel(title: "Easy On Me", subtitle: "Adele", image: Assets.imagesR9, mins: "3.75"),
    TopStreamModel(title: "Moonlight", subtitle: "Public Library Commu...", image: Assets.imagesR3, mins: "3.75"),
    TopStreamModel(title: "SICKO MODE", subtitle: "Travis Scott ft. Drake", image: Assets.imagesR5, mins: "3.75"),
    TopStreamModel(title: "Get Lost", subtitle: "Vincent Fable", image: Assets.imagesR6, mins: "3.75"),
    TopStreamModel(title: "I Feel Good", subtitle: "Pink Sweat", image: Assets.imagesR7, mins: "3.75"),
    TopStreamModel(title: "Midsummer Madness", subtitle: "88rising", image: Assets.imagesR8, mins: "3.75"),
    TopStreamModel(title: "Moonlight", subtitle: "Rose", image: Assets.imagesRose, mins: "3.75"),
    TopStreamModel(title: "Get Lost", subtitle: "Vincent Fable", image: Assets.imagesR6, mins: "3.75"),
  ];

  @override
  State<ListViewOfTopStreams> createState() => _ListViewOfTopStreamsState();
}

class _ListViewOfTopStreamsState extends State<ListViewOfTopStreams> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedSize(
            duration: const Duration(milliseconds: 400), // مدة الأنيميشن
            curve: Curves.easeInOutCubic, // شكل حركة الأنيميشن (ناعم في الأول والآخر)
            alignment: Alignment.topCenter, // عشان الليست تفتح لتحت
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: !isExpanded ? 6 : ListViewOfTopStreams.topStreams.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10, top: 10),
                  // ملحوظة صغيرة: استخدمت (index + 1) بدل (++index) عشان أفضل كـ Practice
                  child: TopStreamItem(
                    topStreamModel: ListViewOfTopStreams.topStreams[index],
                    index: (index + 1).toString(), 
                  ),
                );
              },
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0), // عشان التاتش يكون مريح
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    isExpanded ? "See Less" : "Expand",
                    style: TextAppStyles.textStyle15SemiBold(context).copyWith(
                      color: ColorsApp.greyTwo,
                    ),
                  ),
                  const SizedBox(width: 10),
                  
                  // 2. السحر التاني: AnimatedRotation للـ Icon
                  AnimatedRotation(
                    turns: isExpanded ? 0.5 : 0.0, // 0.5 يعني نص لفة (180 درجة)
                    duration: const Duration(milliseconds: 300),
                    child: SvgPicture.asset(Assets.imagesExpand),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}