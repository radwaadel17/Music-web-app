import 'package:flutter/material.dart';
import 'package:streamingapp/widgets/adaptive-layouts.dart';
import 'package:streamingapp/widgets/desktop-layout.dart';
import 'package:streamingapp/widgets/mobile-layout.dart';
import 'package:streamingapp/widgets/tablet-layout.dart';

class VideoStreamingViewBody extends StatelessWidget {
  const VideoStreamingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  AdaptiveLayout(
      mobileLayout: (context) => const MobileLayout(),
      tabletLayout: (context) => const TabletLayout(),
      desktopLayout: (context) => const DesktopLayout(),
    );
  }
}