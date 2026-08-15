import 'package:flutter/material.dart';
import 'package:streamingapp/utils/widgets/desktop-layout.dart';
import 'package:streamingapp/utils/widgets/tablet-layout.dart';
import 'package:streamingapp/widgets/adaptive-layouts.dart';
import 'package:streamingapp/widgets/mobile-layout.dart';

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