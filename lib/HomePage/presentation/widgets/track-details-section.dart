import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/presentation/widgets/track-details-body-tablet-desktop.dart';
import 'package:streamingapp/HomePage/presentation/widgets/track-details-sections-body-mobile.dart';
import 'package:streamingapp/utils/size-config.dart';

class TrackDetailsSection extends StatelessWidget {
  const TrackDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    var screenWidth = SizeConfig.screenWidth;
    return  screenWidth <= SizeConfig.tablet ? TrackDetailsSectionBodyTabletDesktop() :
     TrackDetailsSectionBodyMobile();
  }
}






