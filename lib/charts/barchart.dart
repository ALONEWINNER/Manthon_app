// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:godeye/charts/barchart/acidattack.dart';
import 'package:godeye/charts/barchart/murder.dart';
import 'package:godeye/charts/barchart/rape.dart';
// ignore: unused_import
import 'package:godeye/charts/linechart.dart';
// ignore: unused_import
import 'package:godeye/charts/pie.dart';

// ignore: must_be_immutable
class Barcharts extends StatefulWidget {
  @override
  _BarchartsState createState() => _BarchartsState();
}

class _BarchartsState extends State<Barcharts> {
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
                    'NCRB Reports',
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
                          builder: (context) => Murderbarchart()));
                    },
                    child: Card(
                      elevation: 10,
                      margin: const EdgeInsets.all(15),
                      child: Container(
                        height: 100,
                        child: Center(
                          child: const Text(
                            "Murder",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Rapebarchar()));
                      // Rapebarcharts
                    },
                    child: Card(
                      elevation: 10,
                      margin: const EdgeInsets.all(15),
                      child: Container(
                        height: 100,
                        child: Center(
                          child: const Text(
                            "Rape",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Rapebarcharts()));
                      // Rapebarcharts
                    },
                    child: Card(
                      elevation: 10,
                      margin: const EdgeInsets.all(15),
                      child: Container(
                        height: 100,
                        child: Center(
                          child: const Text(
                            "Acid Attacks",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Murderbarchart()));
                    },
                    child: Card(
                      elevation: 10,
                      margin: const EdgeInsets.all(15),
                      child: Container(
                        height: 100,
                        child: Center(
                          child: const Text(
                            "Extortion",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Rapebarchar()));
                      // Rapebarcharts
                    },
                    child: Card(
                      elevation: 10,
                      margin: const EdgeInsets.all(15),
                      child: Container(
                        height: 100,
                        child: Center(
                          child: const Text(
                            "dacoity",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Rapebarcharts()));
                      // Rapebarcharts
                    },
                    child: Card(
                      elevation: 10,
                      margin: const EdgeInsets.all(15),
                      child: Container(
                        height: 100,
                        child: Center(
                          child: const Text(
                            "Kidnapping",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
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
