// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_json_gmaps/teams.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OpenTeamMap extends StatefulWidget {
  final Teams teams;

  OpenTeamMap(this.teams);

  @override
  _OpenTeamMapState createState() => _OpenTeamMapState();
}

class _OpenTeamMapState extends State<OpenTeamMap> {
  _OpenTeamMapState();
  GoogleMapController mapController;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.teams.name),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: LatLng(widget.teams.lat, widget.teams.lng),
          zoom: 21.0,
        ),
      ),
    );
  }
}
