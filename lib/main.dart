import 'package:flutter/material.dart';
import 'package:flutter_app_state_management/pages/page_1_page.dart';
import 'package:flutter_app_state_management/services/superheroe_services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SuperheroeService(),),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: Page1page(),
      ),
    );
  }
}

