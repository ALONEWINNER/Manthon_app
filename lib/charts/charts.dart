// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:godeye/charts/barchart.dart';
// ignore: unused_import
import 'package:godeye/charts/linechart.dart';
import 'package:godeye/charts/pie.dart';

// ignore: must_be_immutable
class Charts extends StatefulWidget {
  @override
  _ChartsState createState() => _ChartsState();
}

class _ChartsState extends State<Charts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          primary: true,
          slivers: <Widget>[
            SliverAppBar(
                backgroundColor: Colors.orange[50],
                // ignore: prefer_const_constructors
                iconTheme: IconThemeData(color: Colors.yellow),
                expandedHeight: 180,
                centerTitle: true,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    "assets/logo2.png",
                    fit: BoxFit.contain,
                  ),
                  title: Text(
                    'CHARTS',
                    style: TextStyle(
                      backgroundColor: Colors.orange.shade50.withOpacity(.5),
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  centerTitle: true,
                )),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PieChartSample1()));
                    },
                    child: Card(
                      elevation: 10,
                      margin: const EdgeInsets.all(15),
                      child: Container(
                        height: 200,
                        child: Center(
                          child: const Text(
                            "Pie Charts",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Barcharts()));
                    },
                    child: Card(
                      elevation: 10,
                      margin: const EdgeInsets.all(15),
                      child: Container(
                        height: 200,
                        child: Center(
                          child: const Text(
                            "Bar charts",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    margin: const EdgeInsets.all(15),
                    child: Container(
                      height: 200,
                      child: Center(
                        child: const Text(
                          "Line Charts",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
