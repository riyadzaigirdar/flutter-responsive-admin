import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:10.0, bottom: 10.0),
        child: SizedBox(
        height:180,
        child: Stack(
            children: [
              PieChart(
                PieChartData(
                  sectionsSpace: 0,
                  centerSpaceRadius: 70,
                  startDegreeOffset: -90,
                  sections: sections
                )
            ),
            Positioned.fill(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "29.1", 
                    style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                      ),
                    ),
                  Text(
                    "Of 128GB", 
                    style: TextStyle(
                      fontSize: 12.0, 
                      fontWeight: FontWeight.w600
                      ),
                    )
                  ],
                )
              )
          ],
        )
            ),
          );
  }
}


var sections = [
            PieChartSectionData(
              color: Colors.red,
              value: 15.0,
              showTitle: false,
              radius: 25
              ),
            PieChartSectionData(
              color: Colors.blue,
              value: 25.0,
              showTitle: false,
              radius: 22
              ),
            PieChartSectionData(
              color: Colors.white54,
              value: 15.0,
              showTitle: false,
              radius: 18
              ),
            PieChartSectionData(
              color: Colors.yellow,
              value: 15.0,
              showTitle: false,
              radius: 15
              ),
            PieChartSectionData(
              color: Colors.black,
              value: 15.0,
              showTitle: false,
              radius: 12
              ),
            ];