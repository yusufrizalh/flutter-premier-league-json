// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_json_gmaps/openteammap.dart';
import 'package:flutter_json_gmaps/teams.dart';

class TeamDetails extends StatefulWidget {
  final Teams teams;

  TeamDetails(this.teams);

  @override
  _TeamDetailsState createState() => _TeamDetailsState();
}

class _TeamDetailsState extends State<TeamDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.teams.name),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(12.0),
          child: Card(
            child: Container(
              padding: EdgeInsets.all(12.0),
              width: 450.0,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 12.0),
                    child: Image(
                      image: AssetImage('assets/logo/' + widget.teams.image),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 12.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'City : ',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black.withOpacity(
                              0.8,
                            ),
                          ),
                        ),
                        Text(
                          widget.teams.location,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 12.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Stadium : ',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black.withOpacity(
                              0.8,
                            ),
                          ),
                        ),
                        Text(
                          widget.teams.stadium,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 12.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Stadium Capacity: ',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black.withOpacity(
                              0.8,
                            ),
                          ),
                        ),
                        Text(
                          widget.teams.capacity.toString(),
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 12.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Manager: ',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black.withOpacity(
                              0.8,
                            ),
                          ),
                        ),
                        Text(
                          widget.teams.manager,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 12.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Captain: ',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black.withOpacity(
                              0.8,
                            ),
                          ),
                        ),
                        Text(
                          widget.teams.captain,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 12.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OpenTeamMap(widget.teams),
                          ),
                        );
                      },
                      child: Text('Open Maps'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
