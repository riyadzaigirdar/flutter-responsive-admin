import 'package:flutter/material.dart';
import '../../models/MyFiles.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key key,
    @required this.info,
  }) : super(key: key);

  final CloudStorageInfo info;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
            color: info.color.withOpacity(0.1),
            borderRadius: BorderRadius.all(
              Radius.circular(5)
              ) 
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints)=>
            Container(
              width: constraints.maxWidth * (info.percentage /100),
              height: 5,
              decoration: BoxDecoration(
                color: info.color,
                borderRadius: BorderRadius.all(
                  Radius.circular(5)
                ) 
              ),
            )
          )
      ],
    );
  }
}