import 'package:diocese/cidades_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<CidadesController>(
        create: (context) => CidadesController(),
        child: Builder(builder: (context){
          final local = context.watch<CidadesController>();

          return GoogleMap(initialCameraPosition: CameraPosition(
            target: LatLng(local.lat,local.long),
            zoom: 18,
          ),
            mapType: MapType.normal,
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            onMapCreated: local.onMapCreated,
          );
        }),
      ),
    );
  }
}

