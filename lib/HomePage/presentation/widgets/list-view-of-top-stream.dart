import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:streamingapp/HomePage/models/top-stream-model.dart';
import 'package:streamingapp/HomePage/presentation/widgets/top-stream-item.dart';
import 'package:streamingapp/utils/assets.dart';
import 'package:streamingapp/utils/colors-app.dart';
import 'package:streamingapp/utils/text-styles.dart';

class ListViewOfTopStreams extends StatefulWidget {
  const ListViewOfTopStreams({
    super.key, 
  });
  static const List<TopStreamModel> topStreams = [
    TopStreamModel(
      title: "Mistletoe",
      subtitle: "Justin Bieber",
      image:  Assets.imagesR2 , 
      mins  :   "3.75"
    ) , 
     TopStreamModel(
      title: "Easy On Me",
      subtitle: "Adele",
      image:  Assets.imagesR9 , 
      mins  :   "3.75"
    ) , 
     TopStreamModel(
      title: "Moonlight",
      subtitle: "Public Library Commu...",
      image:  Assets.imagesR3 , 
      mins  :   "3.75"
    ) ,
     TopStreamModel(
      title: "SICKO MODE",
      subtitle: "Travis Scott ft. Drake",
      image:  Assets.imagesR5 , 
      mins  :   "3.75"
    ) ,
      TopStreamModel(
      title: "Get Lost",
      subtitle: "Vincent Fable",
      image:  Assets.imagesR6 , 
      mins  :   "3.75"
    ) ,
     TopStreamModel(
      title: "I Feel Good",
      subtitle: "Pink Sweat",
      image:  Assets.imagesR7 , 
      mins  :   "3.75"
    ) ,
    TopStreamModel(
      title: "Midsummer Madness",
      subtitle: "88rising",
      image:  Assets.imagesR8 , 
      mins  :   "3.75"
    ) ,
    TopStreamModel(
      title: "Moonlight",
      subtitle: "Rose",
      image:  Assets.imagesRose , 
      mins  :   "3.75"
    ) ,
      TopStreamModel(
      title: "Get Lost",
      subtitle: "Vincent Fable",
      image:  Assets.imagesR6 , 
      mins  :   "3.75"
    ) ,
  ] ; 

  @override
  State<ListViewOfTopStreams> createState() => _ListViewOfTopStreamsState();
}

class _ListViewOfTopStreamsState extends State<ListViewOfTopStreams> {
   bool isExpanded  = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: !isExpanded ? 6 : ListViewOfTopStreams.topStreams.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10 , top : 10 ),
                child: TopStreamItem(topStreamModel: ListViewOfTopStreams.topStreams[index], index:(++index).toString(),),
              ) ; 
            }
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(isExpanded ? "See Less" : "Expand" , style: TextAppStyles.textStyle15SemiBold(context).copyWith(
                        color: ColorsApp.greyTwo
                      )),
                      SizedBox(width: 10,),
                      SvgPicture.asset(Assets.imagesExpand)
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
