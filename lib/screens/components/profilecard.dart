import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10.0),
      padding: const EdgeInsets.symmetric(horizontal:20.0, vertical:10.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white.withOpacity(0.3)),
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(20.0))
      ),
      child: Row(
        children: [
          if(!Responsive.isMobile(context))
          Image.asset("assets/images/profile_pic.png", height: 38,),
          if(!Responsive.isMobile(context))
          Text("Angelina Jolie"),
          InkWell(onTap: (){}, child: Padding(padding: const EdgeInsets.only(left:5.0), child: Icon(Icons.arrow_downward, size: 20,)))
        ],
      ),
    );
  }
}