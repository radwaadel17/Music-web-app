import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/presentation/widgets/banner-widget.dart';
import 'package:streamingapp/HomePage/presentation/widgets/new-realse-header.dart';
import 'package:streamingapp/HomePage/presentation/widgets/new-realses-list.dart';
import 'package:streamingapp/HomePage/presentation/widgets/you-may-like-header.dart';
import 'package:streamingapp/HomePage/presentation/widgets/you-may-like-list.dart';

class MainContentWidget extends StatelessWidget {
  const MainContentWidget({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Column(
        children: [
          BannerWidget(),
          SizedBox(height: 10),
          NewRealsesHeader(),
          SizedBox(height: 10),
          NewRealsesList(),
          SizedBox(height: 50),
          YouMayLikeHeader() , 
          SizedBox(height: 10),
          YouMayLikeList(),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}


