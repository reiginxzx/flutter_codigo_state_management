import 'package:flutter/material.dart';
import 'package:flutter_app_state_management/pages/page_2_page.dart';

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
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            Page2page();
          },));
        },
      ),
      body: Container(
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
              title: Text("Nombre: "),
            ),
            ListTile(
              title: Text("Anos de experiencia: "),
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
      ),
    );
  }
}
