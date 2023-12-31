import 'package:diocese/controllers/cidades_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

final appKey = GlobalKey();

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: appKey,
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              'assets/more_vert.png',
              fit: BoxFit.cover,
              width: 24.0,
              height: 24.0,
            ),
          )
        ],
        title: const Text('Diocese de Santos', style: TextStyle(color: Colors.white)),
        leading: Image.asset('assets/diocese.png', height: 36, width: 36),
        backgroundColor: Colors.blueAccent,
      ),
      body: Stack(
        children: [
          GoogleMapWidget(),

          Positioned(
            top: 8.0,
            left: 8.0,
            right: 8.0,
            child: SearchInputWidget(),
          ),
        ],
      ),
    );
  }
}

class GoogleMapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CidadesController>(
      create: (context) => CidadesController(),
      child: Builder(builder: (context) {
        final local = context.watch<CidadesController>();

        return GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(local.lat, local.long),
            zoom: 18,
          ),
          zoomControlsEnabled: false,
          mapType: MapType.normal,
          myLocationEnabled: true,
          myLocationButtonEnabled: false,
          onMapCreated: local.onMapCreated,
          markers: local.markers,
          mapToolbarEnabled: false,
        );
      }),
    );
  }
}

class SearchInputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          filled: true,
          hintStyle: TextStyle(color: Colors.grey[800]),
          hintText: "Digite a paróquia",
          fillColor: Colors.white70,
          suffixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}