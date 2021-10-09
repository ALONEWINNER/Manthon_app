// ignore_for_file: prefer_const_constructors, deprecated_member_use, duplicate_ignore, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:godeye/charts/charts.dart';
import 'package:godeye/googlemap/clusteringmap.dart';
import 'package:godeye/homepage/homepage.dart';

class Godeyee extends StatefulWidget {
  @override
  _GodeyeeState createState() => _GodeyeeState();
}

class _GodeyeeState extends State<Godeyee> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text(
            " Crime Prone Area",
            style: TextStyle(color: Colors.black),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text(
                  "Home",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "Google Map",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "Prones Area",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "Charts1",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "Cahrts2",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "Facebook",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              // ignore: prefer_const_constructors
              Tab(
                child: Text(
                  "Instagram",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              // ignore: prefer_const_constructors
              Tab(
                child: Text(
                  "Twitter",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              // ignore: prefer_const_constructors
              Tab(
                child: Text(
                  "ML Models",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              // ignore: prefer_const_constructors

              Tab(
                child: Text(
                  "Text Classification",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              // ignore: prefer_const_constructors
            ],
            isScrollable: true,
            indicatorColor: Colors.black,
            indicatorWeight: 5,
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            HomePage(),
            Clustering(),
            Clustering(),
            Charts(),
            Charts(),
            Clustering(),
            Clustering(),
            Clustering(),
            Clustering(),
            Clustering(),
          ],
        ),
        drawer: Drawer(
          elevation: 20,
          child: ListView(
            padding: EdgeInsets.all(10),
            children: <Widget>[
              // ignore: prefer_const_constructors
              UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.white),
                  accountEmail: Text(
                    'yashvendrajnv95@gmail.com',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                  accountName: Text(
                    'The God eye',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://firebasestorage.googleapis.com/v0/b/godeye-685c6.appspot.com/o/logo.png?alt=media&token=516eb54d-6a73-4898-b444-29595fa40bbc'),
                  )),

              Divider(
                height: 10,
                color: Colors.lightBlueAccent,
              ),
              ListTile(
                leading: Icon(Icons.new_releases),
                title: Text("Latest News"),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Clustering()));
                },
              ),
              ListTile(
                leading: Icon(Icons.app_registration),
                title: Text("Crime Prone Areas"),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Clustering()));
                },
              ),
              ListTile(
                leading: Icon(Icons.note_add),
                title: Text("Charts"),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Clustering()));
                },
              ),
              ListTile(
                leading: Icon(Icons.store),
                title: Text("Social Media"),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Clustering()));
                },
              ),

              ListTile(
                leading: Icon(Icons.question_answer),
                title: Text("Forensic Ml Models"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text("Contact"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.share),
                title: Text(" Privacy"),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
