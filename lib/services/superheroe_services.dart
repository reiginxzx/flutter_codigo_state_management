
import 'dart:async';

import 'package:flutter_app_state_management/models/superheroe_model.dart';

class _SuperheroeServices{

  Superheroe _superheroe;
  //Obtener al objeto superheroe
  Superheroe get superheroe => this._superheroe;

  //CREAR UN NUEVO SUPERHEROE
  void newSuperheroe(Superheroe superheroe){
    this._superheroe=superheroe;
    _superheroeStreamController.add(_superheroe);
  }

  //Saber si un superheroe existe
  bool get superheroeExist => (_superheroe !=null)?true :false;

  //ChangeExperience
  void changeExperience(int exp){
    _superheroe.experiencie=exp;
    _superheroeStreamController.add(_superheroe);
  }


  //Stream
  StreamController _superheroeStreamController = StreamController<Superheroe>.broadcast();
  Stream<Superheroe> get superheroeStream =>_superheroeStreamController.stream;

  closeStream(){
    _superheroeStreamController.close();
  }

}

final superheroeService= new _SuperheroeServices();
