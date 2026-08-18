import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/presentation/widgets/music-streaming-view-body.dart';
import 'package:streamingapp/utils/size-config.dart';

class MusicStreamingView extends StatelessWidget {
  const MusicStreamingView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    print(SizeConfig.screenWidth);
    return const Scaffold(
      

      body: MusicStreamingViewBody(),
    );
  }
}