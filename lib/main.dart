import 'package:flutter/material.dart';
import 'package:my_recipes/views/home.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Food Recipe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.white,
          textTheme: TextTheme(
            bodyText2: TextStyle(color: Colors.white),
          )
      ),
      home: HomePage(),
    );
  }
}



