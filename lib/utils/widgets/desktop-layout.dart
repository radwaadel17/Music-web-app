import 'package:flutter/material.dart';
import 'package:streamingapp/utils/widgets/custom-drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment : CrossAxisAlignment.stretch,
      children :  [
        Expanded(
          child: CustomDrawer(),
        ),
         Expanded(
          child: Container(
            color: Colors.blue,
          ),
        ),
         Expanded(
          child:Container(
            color: Colors.blue,
          ),
        ),
      ] ,
    );
  }
}