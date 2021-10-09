// ignore_for_file: prefer_const_declarations, prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartSample1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PieChartSample1State();
}

class PieChartSample1State extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SizedBox(
            height: 200,
          ),
          Center(
            child: Container(
              child: Text(
                " NCRB Reports :\n2014-2020, (UP) ",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Center(
            child: AspectRatio(
              aspectRatio: 1.3,
              child: Card(
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    const SizedBox(
                      height: 18,
                    ),
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: PieChart(
                          PieChartData(
                              pieTouchData: PieTouchData(touchCallback:
                                  (FlTouchEvent event, pieTouchResponse) {
                                setState(() {
                                  if (!event.isInterestedForInteractions ||
                                      pieTouchResponse == null ||
                                      pieTouchResponse.touchedSection == null) {
                                    touchedIndex = -1;
                                    return;
                                  }
                                  touchedIndex = pieTouchResponse
                                      .touchedSection!.touchedSectionIndex;
                                });
                              }),
                              borderData: FlBorderData(
                                show: false,
                              ),
                              sectionsSpace: 0,
                              centerSpaceRadius: 60,
                              sections: showingSections()),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Indicator(
                          color: Color(0xff0293ee),
                          text: 'Murder',
                          isSquare: true,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Indicator(
                          color: Color(0xfff8b250),
                          text: 'Rape',
                          isSquare: true,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Indicator(
                          color: Color(0xff845bef),
                          text: 'Extortion',
                          isSquare: true,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Indicator(
                          color: Color(0xff13d38e),
                          text: 'Kidnapping',
                          isSquare: true,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Indicator(
                          color: Colors.black,
                          text: 'Acid Attacks',
                          isSquare: true,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Indicator(
                          color: Colors.red,
                          text: 'Dacoity',
                          isSquare: true,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 28,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(6, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 25.0 : 16.0;
      final radius = isTouched ? 60.0 : 50.0;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color(0xff0293ee),
            value: 30,
            title: '30%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 1:
          return PieChartSectionData(
            color: const Color(0xfff8b250),
            value: 20,
            title: '25%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 2:
          return PieChartSectionData(
            color: const Color(0xff845bef),
            value: 15,
            title: '15%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 3:
          return PieChartSectionData(
            color: Colors.black,
            value: 5,
            title: '5%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 4:
          return PieChartSectionData(
            color: Colors.red,
            value: 20,
            title: '20%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );
        case 5:
          return PieChartSectionData(
            color: const Color(0xff13d38e),
            value: 10,
            title: '10%',
            radius: radius,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color(0xffffffff)),
          );

        default:
          throw Error();
      }
    });
  }
}

class Indicator extends StatelessWidget {
  final Color color;
  final String text;
  final bool isSquare;
  final double size;
  final Color textColor;

  const Indicator({
    Key? key,
    required this.color,
    required this.text,
    required this.isSquare,
    this.size = 16,
    this.textColor = const Color(0xff505050),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: textColor),
        )
      ],
    );
  }
}
