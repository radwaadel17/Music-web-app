import 'package:flutter/material.dart';
import 'package:streamingapp/utils/text-styles.dart';

class TopStreamsHeader extends StatelessWidget {
  const TopStreamsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'Top Streams Real-time',
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextAppStyles.textStyle19Bold(context),
          ),
        ),

        Container(
          padding: const EdgeInsets.all(4.0), 
          decoration: BoxDecoration(
            color: const Color(0xff49504D),
      
            borderRadius: BorderRadius.circular(6.0), 
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min, 
            children: [
              // الكونتينر الأحمر (Local)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
                decoration: BoxDecoration(
                  color: const Color(0xffEE4950),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Text(
                  'Local',
                  style: TextAppStyles.textStyle15Regular(context).copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
                child: Text(
                  'Global', 
                  style: TextAppStyles.textStyle15Regular(context).copyWith(
                    color: Colors.white70, // لون أهدى شوية عشان تبان إنها غير مفعلة
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}