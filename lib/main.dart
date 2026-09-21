import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:streamingapp/HomePage/presentation/views/music-streaming-view.dart';
import 'package:streamingapp/utils/colors-app.dart';

void main() => runApp(
  DevicePreview(enabled: !kReleaseMode, builder: (context) => MusicWebApp()),
);

class MusicWebApp extends StatelessWidget {
  const MusicWebApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: deprecated_member_use
      builder: (context, child) {
        final mediaQueryData = MediaQuery.of(context);
        final scale = mediaQueryData.textScaler.clamp(
          minScaleFactor: 1.0,
          maxScaleFactor: 1.2,
        );
        return MediaQuery(
          data: mediaQueryData.copyWith(textScaler: scale),
          child: child!,
        );
      },
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: ColorsApp.primaryColor),
      home: MusicStreamingView(),
    );
  }
}
