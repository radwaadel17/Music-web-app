import 'package:flutter/material.dart';
import 'package:streamingapp/utils/layouts/adaptive-layouts.dart';
import 'package:streamingapp/utils/layouts/desktop-layout.dart';
import 'package:streamingapp/utils/layouts/mobile-layout.dart';
import 'package:streamingapp/utils/layouts/tablet-layout.dart';


class MusicStreamingViewBody extends StatelessWidget {
  const MusicStreamingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  AdaptiveLayout(
      mobileLayout: (context) => const MobileLayout(),
      tabletLayout: (context) => const TabletLayout(),
      desktopLayout: (context) => const DesktopLayout(),
    );
  }
}