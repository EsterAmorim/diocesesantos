import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CidadesController extends ChangeNotifier{
  double lat = 0.0;
  double long = 0.0;
  String erro = '';
  late GoogleMapController _mapsController;

  CidadesController(){
    getPosition();
  }

  get mapsController => _mapsController;


  onMapCreated(GoogleMapController gmc) async{
    _mapsController = gmc;
    getPosition();
  }

  getPosition() async {
    try {
      Position posicao = await _posicaoAtual();
      lat = posicao.latitude;
      long = posicao.longitude;
      print(posicao.latitude);
      print(posicao.longitude);
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