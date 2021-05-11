import 'package:flutter/material.dart';
import 'package:flutter_app_state_management/models/superheroe_model.dart';
import 'package:flutter_app_state_management/pages/page_2_page.dart';
import 'package:flutter_app_state_management/services/superheroe_services.dart';

class Page1page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Superheroe"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.deepPurpleAccent,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder:(context) => Page2page(),));
        },
      ),
      body: StreamBuilder(
        stream: superheroeService.superheroeStream,
        builder: (BuildContext context, AsyncSnapshot<Superheroe> snapshot) {
          return snapshot.hasData ? InformationWidget(heroe: snapshot.data,):Center(child: Text("No hay Data"));
        },
      )
    );
  }
}

class InformationWidget extends StatelessWidget {

  Superheroe heroe;


  InformationWidget({this.heroe});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Informacion General",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
          ),
          Divider(),
          ListTile(
            title: Text("Nombre: ${heroe.name}"),
          ),
          ListTile(
            title: Text("Anos de experiencia: ${heroe.experiencie}"),
          ),
          Text(
            "Poderes",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
            ),
          ),
          Divider(),
          ListTile(
            title: Text("Poder 1: "),
          ),
          ListTile(
            title: Text("Poder 2: "),
          ),
          ListTile(
            title: Text("Poder 3: "),
          ),
        ],
      ),
    );
  }
}
