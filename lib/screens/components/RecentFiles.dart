import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';
import '../../models/RecentFile.dart';



class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      padding: const EdgeInsets.all(10.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0)
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Files", 
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(
            width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                              child: DataTable(
                  columns: [
                    DataColumn(
                      label: Text("Filename")
                    ),
                    DataColumn(
                      label: Text("Date")
                    ),
                    DataColumn(
                      label: Text("Size")
                    )
                  ], 
                  rows: demoRecentFiles.map((item) => 
                  (DataRow(
                      cells: [
                        DataCell(
                          Row(
                            children: [
                              SvgPicture.asset(item.icon),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text(item.title)
                              )
                            ],
                          )
                        ),
                        DataCell(
                          Text(item.date)
                        ),
                        DataCell(
                          Text(item.size)
                        ) ]
                    )
                    )
                  ).toList()
                ),
              ),
          )
        ],
        )
    );
  }
}