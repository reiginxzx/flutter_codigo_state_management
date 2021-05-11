
import 'package:flutter/material.dart';
import 'package:flutter_app_state_management/models/superheroe_model.dart';
import 'package:flutter_app_state_management/pages/page_2_page.dart';
import 'package:flutter_app_state_management/services/superheroe_services.dart';
import 'package:provider/provider.dart';

class Page1page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final superheroeService = Provider.of<SuperheroeService>(context);


    return Scaffold(
      appBar: AppBar(
        title: Text("Superheroe"),
        backgroundColor: Colors.deepPurpleAccent,
        actions: [
          IconButton(icon: Icon(Icons.delete), onPressed: (){

          })
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.deepPurpleAccent,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder:(context) => Page2page(),));
        },
      ),
      body: superheroeService.superheroeExist
          ? InformationWidget(heroe: superheroeService.superheroe,
            )
          : Center(
            child: Text("No hay data"),
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
          Column(
            children: heroe.powers.map((e) =>
            ListTile(
              title: Text(e),
            )).toList(),
          )
        ],
      ),
    );
  }
}
