import 'package:flutter/material.dart';
import 'package:streamingapp/utils/colors-app.dart';
import 'package:streamingapp/utils/widgets/custom-drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(flex: 1, child: CustomDrawer()),
            Expanded(
              flex: 5,
              child: Row(
                children: [
                  Expanded(flex: 2, child: Container(color: ColorsApp.grey)),

                  Expanded(
                    flex: 1,
                    child: Container(color: ColorsApp.redColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
