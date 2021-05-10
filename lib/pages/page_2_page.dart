import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page2page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page2"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            onPressed: (){},
            child: Text("Anadir superheroe",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.deepPurpleAccent,
          ),
          SizedBox(height: 13,),
          CupertinoButton(
            color: Colors.deepPurpleAccent,
            child: Text("Modificar anos experiencia"),
            onPressed: (){}
          ),
          SizedBox(height: 13,),
          CupertinoButton(
              color: Colors.deepPurpleAccent,
              child: Text("Anadir superpoderes"),
              onPressed: (){}
          ),
        ],
      ),
    );
  }
}
