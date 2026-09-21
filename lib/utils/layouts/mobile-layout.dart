import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:streamingapp/HomePage/presentation/play-music-bar-mobile.dart';
import 'package:streamingapp/HomePage/presentation/widgets/main-content-widget.dart';
import 'package:streamingapp/HomePage/presentation/widgets/top-stream-and-categories.dart';
import 'package:streamingapp/utils/assets.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar() , 
                  MainContentWidget(),
                  TopStreamsAndCategories(),
                  SizedBox(width: 30),
                ],
              ),
            ),
          ),
        ),
       
      ],
       ),
       Positioned(bottom: 0, child: PlayMusicBarMobile()),
      ],
    );
  }
}
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          Assets.imagesLogo
        ),
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            // Handle search button press
          },
        ),
      ],
    ) ; 
  }
}