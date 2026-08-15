import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/presentation/views/music-streaming-view.dart';

void main() {
  runApp(const MusicWebApp());
}

class MusicWebApp extends StatelessWidget {
  const MusicWebApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MusicStreamingView(),
    );
  } 
}