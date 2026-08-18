import 'package:flutter/material.dart';
import 'package:streamingapp/utils/colors-app.dart';
import 'package:streamingapp/utils/size-config.dart';
import 'package:streamingapp/utils/text-styles.dart';

class MusicTypesColumn extends StatefulWidget {
  const MusicTypesColumn({super.key, required this.musicTypes});

  final List<String> musicTypes;

  @override
  State<MusicTypesColumn> createState() => _MusicTypesColumnState();
}

class _MusicTypesColumnState extends State<MusicTypesColumn> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    var width = SizeConfig.screenWidth;

    return Column(
       mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widget.musicTypes
          .asMap()
          .entries
          .map(
            (entry) => Padding(
              padding: EdgeInsets.only(
                bottom: width > 1098 && width > SizeConfig.desktop ? 3 : 0,
              ),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = entry.key;
                  });
                },
                child: Text(
                  textAlign: TextAlign.left,
                  entry.value,
                  style: selectedIndex != entry.key
                      ? TextAppStyles.textStyle13Regular(
                          context,
                        ).copyWith(color: ColorsApp.grey)
                      : TextAppStyles.textStyle17Bold(
                          context,
                        ).copyWith(color: Color(0xff272727)),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
