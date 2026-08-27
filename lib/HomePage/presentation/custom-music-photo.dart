import 'package:flutter/material.dart';

class CustomMusicPhoto extends StatelessWidget {
  const CustomMusicPhoto({
    super.key, required this.width, required this.height, required this.image,
  });
  final double width ; 
  final double height ;    
  final String image ;   
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
