import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/presentation/views/video-streaming-view.dart';

void main() {
  runApp(const VideoStreamingWebApp());
}

class VideoStreamingWebApp extends StatelessWidget {
  const VideoStreamingWebApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: const VideoStreamingView(),
    );


  } 

}