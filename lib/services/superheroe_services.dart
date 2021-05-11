
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_app_state_management/models/superheroe_model.dart';

class SuperheroeService with ChangeNotifier{

    Superheroe  _superheroe;
    Superheroe  get superheroe  =>  this._superheroe;
    bool  get superheroeExist =>  (_superheroe != null )  ? true :false;

    set superheroe(Superheroe superheroe){
      _superheroe = superheroe;
      notifyListeners();
    }

    void changeExperience(int exp){
      this._superheroe.experiencie = exp;
      notifyListeners();
    }

    void removeSuperheroe(){
      this._superheroe=null;
      notifyListeners();
    }

    void addPowers(){
      this._superheroe.powers.add('Power ${_superheroe.powers.length+1}');
      notifyListeners();
    }


}
