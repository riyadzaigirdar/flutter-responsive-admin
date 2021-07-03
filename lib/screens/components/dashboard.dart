import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';
import 'topbar.dart';
import 'rightbar.dart';
import 'middle.dart';


class DashBoard extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return (
      Expanded(
        // it takes 5/6 of the screen
        // as the flex is set to 5
        flex: 4,
        child: ListView(
          children: [
            TopBar(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal:10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 4,
                      child: Middle(),
                  ),
                  if(!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                      child: RightBar(),
                  )
                ],
              ),
            ),
            
          ],
        )
      )
    );
  }
}





