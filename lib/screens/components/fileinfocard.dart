import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'progressbar.dart';
import '../../constants.dart';
import '../../models/MyFiles.dart';


class FileInfoCard extends StatelessWidget {
  final CloudStorageInfo info;

  const FileInfoCard({
    Key key,
    @required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) { 
    return Container(
      padding: const EdgeInsets.all(defaultPadding *0.5),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10.0))
      ),
      child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(5.0),
            height: 30.0,
            width: 30.0,
            decoration: BoxDecoration(
      color: info.color.withOpacity(0.1),
      borderRadius: const BorderRadius.all(Radius.circular(10.0))
            ),
            child: SvgPicture.asset(info.svgSrc, width: 5,),
          ),
          // IconButton(
          //   icon: 
            Icon(Icons.more_vert), 
            // onPressed: (){}
            // )
        ],
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Text(info.title , maxLines: 1, overflow: TextOverflow.ellipsis,)
      ),
      ProgressBar(info: info),
      // if(!Responsive.isMobile(context))
      Padding(
        padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
      Text("${info.numOfFiels} Files"),
      Text(info.totalStorage)
            ],
        ),
      ),
      // if(Responsive.isMobile(context))
      // Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         Text("${info.numOfFiels} Files"),
      //         Text(info.totalStorage)
      //       ],
      //   ),
            ],
          ),
    );
  }
}