import 'package:admin/responsive.dart';
import 'package:admin/screens/components/rightbar.dart';
import 'package:flutter/material.dart';
import 'package:admin/models/MyFiles.dart';
import 'package:admin/screens/components/RecentFiles.dart';
import '../../constants.dart';
import 'middle_topbar.dart';
import 'fileinfocard.dart';

class Middle extends StatelessWidget {

  const Middle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double storageMargin = Responsive.isMobile(context)? 0.0 : 10.0;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal:5.0, vertical: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        color: Colors.transparent
      ),
      width: 50,
      height: Responsive.isMobile(context)? 800: 600,
      child: ListView(
        children: [
          MiddleTopbar(),
          SizedBox(height: defaultPadding),
          Responsive(
            desktop: CardGrid(),
            mobile: CardGrid(crossAxisCount: 2),
            tablet: CardGrid(crossAxisCount: 2, chidlAspectRatio: 1.5,),
          ),
          RecentFiles(),
          if(Responsive.isMobile(context))
            Container(
              margin: EdgeInsets.symmetric(horizontal: storageMargin),
              child: RightBar()
            )
        ],
      ),
    );
  }
}

class CardGrid extends StatelessWidget {


  const CardGrid({
    Key key,
    this.crossAxisCount = 4,
    this.chidlAspectRatio = 1
  }) : super(key: key);
  
  final int crossAxisCount;
  final double chidlAspectRatio;
  @override
  Widget build(BuildContext context) {

    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: demoMyFiels.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: chidlAspectRatio
        ),
      itemBuilder: (context, index) => FileInfoCard(
        info: demoMyFiels[index],
      )
    );
  }
}




// class TableRow extends StatelessWidget {
//   @override
//   Widget build(BuildContext context){
//     return DataRow(
//       cells: [
//         DataCell(
//             Row(
//               children: [
//                 SvgPicture.asset("assets/icons/xd_file.svg"),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 5.0),
//                   child: Text("XD File")
//                 )
//               ],
//             )
//         ),
//         DataCell(
//             Text(demoRecentFiles[0].date)
//         ),
//         DataCell(
//             Text(demoRecentFiles[0].size)
//         ) 
//       ]
//     );
//   }
// }









// TextButton(
//                 onPressed: (){}, 
//                 child: Container(
//                   padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
//                   decoration: BoxDecoration(
//                     color: primaryColor, 
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(5.0)
//                     )
//                   ),
//                   child: Row(
//                     children: [
//                         Text("+", style: TextStyle(fontSize: 25.0, color: Colors.white),),
//                         SizedBox(width: 10.0,),
//                         Text("Add New", style: TextStyle(color: Colors.white),)
//                     ]
//                   )
//                 )
//               )