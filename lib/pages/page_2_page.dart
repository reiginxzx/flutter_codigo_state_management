import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_state_management/models/superheroe_model.dart';
import 'package:flutter_app_state_management/services/superheroe_services.dart';

class Page2page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
          stream: superheroeService.superheroeStream,
          builder: (context, AsyncSnapshot<Superheroe> snapshot) {
           return  snapshot.hasData ?  Text(snapshot.data.name):Text("Page 2");
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: (){
                Superheroe heroe = new Superheroe(
                  name: "Spidy",
                  experiencie: 20,
                  powers: ["es rico"]
                );
                superheroeService.newSuperheroe(heroe);
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
                superheroeService.changeExperience(25);
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
