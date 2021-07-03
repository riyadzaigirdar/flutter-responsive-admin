import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'chart.dart';
import '../../constants.dart';
import '../../responsive.dart';


class RightBar extends StatelessWidget {
  const RightBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
        final double storageMargin = Responsive.isMobile(context)? 0.0 : 5.0;
        final double storageMarginVert = Responsive.isMobile(context)? 10.0 : 5.0;
        return Container(
          margin: EdgeInsets.symmetric(horizontal:storageMargin, vertical: storageMarginVert),
          padding: const EdgeInsets.only(left:15.0, right: 15.0 , top: 15.0, bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            color: secondaryColor
          ),
          width: 50,
          height: 580,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Storage Details", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              Chart(),
              Column(
                children: [
                  RightBarBox(
                    text1: "Document Files",
                    text2: "1328 Files",
                    text3: "1.3 GB",
                    img: "assets/icons/Documents.svg",
                  ),
                  RightBarBox(
                    text1: "Media Files",
                    text2: "140 Files",
                    text3: "15.31 GB",
                    img: "assets/icons/media.svg",
                  ),
                  RightBarBox(
                    text1: "Other Files",
                    text2: "1328 Files",
                    text3: "1.3 GB",
                    img: "assets/icons/folder.svg",
                  ),
                  RightBarBox(
                    text1: "Unknown",
                    text2: "140 Files",
                    text3: "1.3 GB",
                    img: "assets/icons/unknown.svg",
                  )
                ],
              )
        ],
      ),
    );
  }
}

class RightBarBox extends StatelessWidget{
  final String text1, text2, text3, img;

  const RightBarBox({
    Key key,
    @required this.text1,
    @required this.text2,
    @required this.text3,
    @required this.img,
  }) :super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
              margin: const EdgeInsets.only(bottom:5.0),
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                border: Border.all(
                  width:2,
                  color: Colors.white54.withOpacity(0.10),
                ),
                borderRadius: BorderRadius.all(Radius.circular(10.0))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:[
                  SvgPicture.asset(img,width: 20.0,),
                  Container(
                    margin: const EdgeInsets.only(left:20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(text1),
                        Text(text2)
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(text3)
                ]
              ),
            );
  }
}

