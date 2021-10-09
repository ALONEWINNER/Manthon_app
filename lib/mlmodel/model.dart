// ignore_for_file: use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MlModel extends StatefulWidget {
  @override
  _MlModelState createState() => _MlModelState();
}

class _MlModelState extends State<MlModel> {
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
                expandedHeight: 250,
                centerTitle: true,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset("asset/logo2.png"),
                  title: Text(
                    'ML Model ',
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
                  Card(
                    elevation: 10,
                    margin: const EdgeInsets.all(15),
                    child: Container(
                      height: 200,
                      child: const Text(
                        "Speech Recognition System",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    margin: const EdgeInsets.all(15),
                    child: Container(
                      height: 200,
                      child: const Text(
                        "Text Recognition System",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    margin: const EdgeInsets.all(15),
                    child: Container(
                      height: 200,
                      child: const Text(
                        "Image Classification System",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
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
