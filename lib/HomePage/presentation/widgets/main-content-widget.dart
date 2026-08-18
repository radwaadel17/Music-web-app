import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/presentation/widgets/banner-widget.dart';
import 'package:streamingapp/utils/colors-app.dart';
class MainContentWidget extends StatelessWidget {
  const MainContentWidget({super.key});
  static const List<String> musicTypes = [
    "R&B",
    "Pop",
    "Rap",
    "Ballad",
    "Country",
    "Hip Hop",
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Column(
        children: [
          BannerWidget(musicTypes: musicTypes),
          SizedBox(height: 20),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: ColorsApp.blueColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),itemCount: 20),
          )
        ],
      ),
    );
  }
}


