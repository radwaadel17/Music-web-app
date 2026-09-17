import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/presentation/widgets/banner-widget.dart';
import 'package:streamingapp/HomePage/presentation/widgets/list-view-of-recently-played.dart';
import 'package:streamingapp/HomePage/presentation/widgets/new-realse-header.dart';
import 'package:streamingapp/HomePage/presentation/widgets/new-realses-list.dart';
import 'package:streamingapp/HomePage/presentation/widgets/recenlty-played-header.dart';
import 'package:streamingapp/HomePage/presentation/widgets/second-banner.dart';
import 'package:streamingapp/HomePage/presentation/widgets/you-may-like-header.dart';
import 'package:streamingapp/HomePage/presentation/widgets/you-may-like-list.dart';
import 'package:streamingapp/utils/size-config.dart';

class MainContentWidget extends StatefulWidget {
  const MainContentWidget({super.key});
  @override
  State<MainContentWidget> createState() => _MainContentWidgetState();
}
class _MainContentWidgetState extends State<MainContentWidget> {
  @override
  Widget build(BuildContext context){
    SizeConfig.init(context);
    var screenWidth = SizeConfig.screenWidth;
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Column(
        children: [
          screenWidth <= SizeConfig.desktop ?   SecondBannerWidget()  : BannerWidget(),
          SizedBox(height: 10),
          NewRealsesHeader(),
          SizedBox(height: 10),
          NewRealsesList(),
          SizedBox(height: 50),
          YouMayLikeHeader(),
          SizedBox(height: 10),
          YouMayLikeList(),
          SizedBox(height: 50),
          RecenltlyPlayedHeader(),
          SizedBox(height: 10),
          ListViewOfRecentlyPlayed() ,
          SizedBox(height: 20),
        ],
      ),
    );  }
}




