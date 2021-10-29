// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, unnecessary_null_comparison, prefer_const_constructors, missing_return, avoid_unnecessary_containers, avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_json_gmaps/teamlist.dart';
import 'package:flutter_json_gmaps/teams.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      title: 'Premier League Teams',
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: MyHomePage(),
    ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Premier League Teams';
  List data; // nullable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        child: Center(
          child: FutureBuilder(
              future: DefaultAssetBundle.of(context)
                  .loadString('assets/data/teams.json'),
              builder: (context, AsyncSnapshot snapshot) {
                print("Snapshot: $snapshot.data");
                if (snapshot.data != null) {
                  List<Teams> teams = parseJSON(snapshot.data.toString());
                  // print("Data: $teams");
                  if (teams == null) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return TeamList(teams: teams);
                  }
                }
              }),
        ),
      ),
    );
  }

  List<Teams> parseJSON(String response) {
    if (response == null) {
      return [];
    }
    final parsedData =
        json.decode(response.toString()).cast<Map<String, dynamic>>();

    // print(parsedData);
    return parsedData.map<Teams>((json) => Teams.fromJson(json)).toList();
  }
}
