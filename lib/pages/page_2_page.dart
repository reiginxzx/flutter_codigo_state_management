import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_state_management/models/superheroe_model.dart';
import 'package:flutter_app_state_management/services/superheroe_services.dart';
import 'package:provider/provider.dart';


class Page2page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final superheroeService = Provider.of<SuperheroeService>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: (){
                Superheroe heroe = new Superheroe(
                  name: "Spidy",
                  experiencie: 15,
                  powers: ["es rico","GWEN Stacy"]
                );
                superheroeService.superheroe=heroe;
              },
              child: Text("Anadir superheroe",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.deepPurpleAccent,
            ),
            SizedBox(height: 13,),
            CupertinoButton(
              color: Colors.deepPurpleAccent,
              child: Text("Modificar anos experiencia"),
              onPressed: (){
                superheroeService.changeExperience(100);
              }
            ),
            SizedBox(height: 13,),
            CupertinoButton(
                color: Colors.deepPurpleAccent,
                child: Text("Anadir superpoderes"),
                onPressed: (){}
            ),
          ],
        ),
      ),
    );
  }
}
