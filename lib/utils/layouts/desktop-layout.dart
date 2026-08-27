import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/presentation/play-music-bar.dart';
import 'package:streamingapp/HomePage/presentation/widgets/main-content-widget.dart';
import 'package:streamingapp/HomePage/presentation/widgets/top-stream-and-categories.dart';
import 'package:streamingapp/utils/widgets/custom-drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(flex: 1, child: CustomDrawer()),
            Expanded(
              flex: 5,
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 30),
                        Expanded(flex: 2, child: MainContentWidget()),
                        SizedBox(width: 30),
                        Expanded(flex: 1, child: TopStreamsAndCategories()),
                        //SizedBox(width: 30),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(bottom: 0, child: PlayMusicBar()),
      ],
    );
  }
}


