import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/presentation/views/music-streaming-view.dart';
import 'package:streamingapp/utils/colors-app.dart';

void main() {
  runApp(const MusicWebApp());
}

class MusicWebApp extends StatelessWidget {
  const MusicWebApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         scaffoldBackgroundColor: ColorsApp.primaryColor,
      ),
      home:  MusicStreamingView(),
    );
  } 
}