import 'dart:ffi';
import 'package:diocese/pages/map_page.dart';
import 'package:diocese/repositories/igrejas_repository.dart';
import 'package:diocese/widgets/igreja_detalhes.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CidadesController extends ChangeNotifier{
  double lat = 0.0;
  double long = 0.0;
  String erro = '';
  Set<Marker> markers = Set<Marker>();
  late GoogleMapController _mapsController;
/*
  CidadesController(){
    getPosition();
  }
*/
  get mapsController => _mapsController;

  onMapCreated(GoogleMapController gmc) async{
    _mapsController = gmc;
    getPosition();
    loadIgrejas();
  }

  //Chamada a API ou backend Artificial
  loadIgrejas(){
    final igrejas = IgrejasRepository().paroquia;
    igrejas.forEach((igreja) async {
      markers.add(Marker(
          markerId: MarkerId(igreja.nome),
          position: LatLng(igreja.latitude, igreja.longitude,),
          //icon: await BitmapDescriptor.fromAssetImage(const ImageConfiguration(), 'assets/church.png'),
          onTap: () => {
            showModalBottomSheet(context: appKey.currentState!.context,
                builder: (context) => IgrejasDetalhes(paroquia: igreja))
          }
          ),
        );
    });
    notifyListeners();
  }
  getPosition() async {
    try {
      Position posicao = await _posicaoAtual();
      lat = posicao.latitude;
      long = posicao.longitude;
      _mapsController.animateCamera(CameraUpdate.newLatLng(LatLng(lat, long)));
    } catch (e){
      erro = e.toString();
    }
    notifyListeners();
  }

  Future<Position>_posicaoAtual() async{
    LocationPermission permissao;

    bool ativado = await Geolocator.isLocationServiceEnabled();
    if(!ativado){
      return Future.error('Por favor, habilite a localização no seu smartphone');
    }
    permissao = await Geolocator.checkPermission();
    if(permissao == LocationPermission.denied){
      permissao = await Geolocator.requestPermission();
      if(permissao == LocationPermission.denied){
        return Future.error('Você precisa habilitar o acesso a localização');
      }
    }

    if(permissao == LocationPermission.deniedForever){
      return Future.error('Você precisa autorizar o acesso a localização');
    }
    return await Geolocator.getCurrentPosition();

  }
}